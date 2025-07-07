from pydantic import BaseModel

class StaffBase(BaseModel):
    surname: str
    forename: str
    role_title: str
    dept: str

class StaffCreate(StaffBase):
    pass

class StaffRead(StaffBase):
    staff_id: int

    class Config:
        orm_mode = True