# db.py
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from app.models import Base  # assuming your file with models is named models.py
import os

DATABASE_URL = os.getenv("DATABASE_URL")

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
