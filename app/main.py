from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from . import models, schemas, database

app = FastAPI()

# Dependency
get_db = database.get_db

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI!"}

# CREATE
@app.post("/staff/", response_model=schemas.StaffRead)
def create_staff(staff: schemas.StaffCreate, db: Session = Depends(get_db)):
    db_staff = models.Staff(**staff.dict())
    db.add(db_staff)
    db.commit()
    db.refresh(db_staff)
    return db_staff

# READ ALL
@app.get("/staff/", response_model=list[schemas.StaffRead])
def read_staffs(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    return db.query(models.Staff).offset(skip).limit(limit).all()

# READ ONE
@app.get("/staff/{staff_id}", response_model=schemas.StaffRead)
def read_staff(staff_id: int, db: Session = Depends(get_db)):
    staff = db.query(models.Staff).filter(models.Staff.staff_id == staff_id).first()
    if staff is None:
        raise HTTPException(status_code=404, detail="Staff not found")
    return staff

# UPDATE
@app.put("/staff/{staff_id}", response_model=schemas.StaffRead)
def update_staff(staff_id: int, staff_update: schemas.StaffCreate, db: Session = Depends(get_db)):
    staff = db.query(models.Staff).filter(models.Staff.staff_id == staff_id).first()
    if staff is None:
        raise HTTPException(status_code=404, detail="Staff not found")
    for key, value in staff_update.dict().items():
        setattr(staff, key, value)
    db.commit()
    db.refresh(staff)
    return staff

# DELETE
@app.delete("/staff/{staff_id}")
def delete_staff(staff_id: int, db: Session = Depends(get_db)):
    staff = db.query(models.Staff).filter(models.Staff.staff_id == staff_id).first()
    if staff is None:
        raise HTTPException(status_code=404, detail="Staff not found")
    db.delete(staff)
    db.commit()
    return {"ok": True}