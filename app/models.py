from sqlalchemy import Column, Integer, String, Float, ForeignKey, Table
from sqlalchemy.orm import relationship, declarative_base

Base = declarative_base()

# --- Association Tables ---

question_topics = Table(
    "question_topics",
    Base.metadata,
    Column("question_id", Integer, ForeignKey("questions.id")),
    Column("topic_id", Integer, ForeignKey("topics.id"))
)

class Company(Base):
    __tablename__ = "companies"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, nullable=False)

    questions = relationship("CompanyQuestion", back_populates="company")

class Topic(Base):
    __tablename__ = "topics"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, nullable=False)

    questions = relationship(
        "Question", secondary=question_topics, back_populates="topics"
    )

class Question(Base):
    __tablename__ = "questions"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, nullable=False)
    difficulty = Column(String)
    acceptance_rate = Column(Float)
    link = Column(String)

    topics = relationship(
        "Topic", secondary=question_topics, back_populates="questions"
    )
    companies = relationship("CompanyQuestion", back_populates="question")

class CompanyQuestion(Base):
    __tablename__ = "company_questions"
    id = Column(Integer, primary_key=True, index=True)
    company_id = Column(Integer, ForeignKey("companies.id"))
    question_id = Column(Integer, ForeignKey("questions.id"))
    time_period = Column(String)
    frequency = Column(Float)

    company = relationship("Company", back_populates="questions")
    question = relationship("Question", back_populates="companies")
