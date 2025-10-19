# main.py
from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.models import Company, CompanyQuestion, Question, Topic
from sqlalchemy import func, case, desc
from fastapi.middleware.cors import CORSMiddleware
from collections import defaultdict

app = FastAPI()

# Allow only your frontend domains
origins = [
    "http://127.0.0.1:5500",       # if using Live Server
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,          # allowed frontend URLs
    allow_credentials=True,
    allow_methods=["*"],            # GET, POST, etc.
    allow_headers=["*"],            # Authorization, Content-Type, etc.
)

@app.get("/company-questions/")
def get_company_questions(company_name: str, db: Session = Depends(get_db)):
    # Step 1: Get company by name
    company = db.query(Company).filter(Company.name == company_name).first()
    if not company:
        raise HTTPException(status_code=404, detail="Company not found")

    # Step 2: Get all questions for this company (all time periods)
    company_questions = (
        db.query(CompanyQuestion)
        .filter(CompanyQuestion.company_id == company.id)
        .all()
    )

    if not company_questions:
        raise HTTPException(status_code=404, detail="No questions found for this company")

    # Step 3: Group questions by time period
    result = defaultdict(list)
    for cq in company_questions:
        q = cq.question
        result[cq.time_period].append({
            "question_id": q.id,
            "title": q.title,
            "difficulty": q.difficulty,
            "acceptance_rate": q.acceptance_rate,
            "link": q.link,
            "topics": [topic.name for topic in q.topics],
            "frequency": cq.frequency,
        })

    # Step 4: Build the final response
    return {
        "company": company_name,
        "time_periods": result
    }

@app.get("/companies/")
def get_companies_sorted(db: Session = Depends(get_db)):
    # Define fixed time period
    time_period = "1. Thirty Days"

    # Query to get companies sorted by number of questions for this   period
    company_counts = (
        db.query(
            Company.id,
            Company.name,
            func.count(CompanyQuestion.id).label("question_count")
        )
        .join(CompanyQuestion, Company.id == CompanyQuestion.company_id)
        .filter(CompanyQuestion.time_period == time_period)
        .group_by(Company.id, Company.name)
        .order_by(func.count(CompanyQuestion.id).desc())
        .limit(10)
        .all()
    )

    if not company_counts:
        raise HTTPException(status_code=404, detail="No companies found")

    # Build response (no time_period)
    return [
        {"company_id": c.id, "name": c.name, "question_count": c.question_count}
        for c in company_counts
    ]
    
@app.get("/topics/")
def get_all_topics(db: Session = Depends(get_db)):
    topics = db.query(Topic).all()

    if not topics:
        raise HTTPException(status_code=404, detail="No topics found")

    return [{"topic_id": t.id, "name": t.name} for t in topics]