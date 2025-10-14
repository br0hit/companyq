# main.py
from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.models import Company, CompanyQuestion, Question, Topic
from sqlalchemy import func, case, desc

app = FastAPI()

@app.get("/company-questions/")
def get_company_questions(company_name: str, time_period: str, db: Session = Depends(get_db)):
    # Step 1: Get company by name
    company = db.query(Company).filter(Company.name == company_name).first()
    if not company:
        raise HTTPException(status_code=404, detail="Company not found")

    # Step 2: Get all CompanyQuestion entries for this company and time period
    company_questions = (
        db.query(CompanyQuestion)
        .filter(
            CompanyQuestion.company_id == company.id,
            CompanyQuestion.time_period == time_period
        )
        .all()
    )

    if not company_questions:
        raise HTTPException(status_code=404, detail="No questions found for this time period")

    # Step 3: Build the response with full question + topic details
    result = []
    for cq in company_questions:
        question = cq.question
        result.append({
            "question_id": question.id,
            "title": question.title,
            "difficulty": question.difficulty,
            "acceptance_rate": question.acceptance_rate,
            "link": question.link,
            "topics": [topic.name for topic in question.topics],
            "time_period": cq.time_period,
            "frequency": cq.frequency,
        })

    return {"company": company_name, "time_period": time_period, "questions": result}


@app.get("/companies/")
def get_companies_sorted(db: Session = Depends(get_db)):
    # Define fixed time period
    time_period = "1. Thirty Days"

    # Query to get companies sorted by number of questions for this period
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