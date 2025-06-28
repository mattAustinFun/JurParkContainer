from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import os

MYSQL_USER = os.getenv("MYSQL_USER", "nedry")
MYSQL_PASSWORD = os.getenv("MYSQL_PASSWORD", "ahahah")
MYSQL_HOST = os.getenv("MYSQL_HOST", "mariadb")
MYSQL_DATABASE = os.getenv("MYSQL_DATABASE", "jurparkdb")

DATABASE_URL = (
    f"mysql+mysqlconnector://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_HOST}/{MYSQL_DATABASE}"
)

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()