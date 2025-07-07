from sqlalchemy import (
    Column, Integer, String, ForeignKey, Enum, DateTime
)
from sqlalchemy.orm import declarative_base, relationship

Base = declarative_base()

class Staff(Base):
    __tablename__ = "staff"
    staff_id = Column(Integer, primary_key=True, autoincrement=True)
    surname = Column(String(100))
    forename = Column(String(100))
    role_title = Column(String(100))
    dept = Column(String(100))

class Visitor(Base):
    __tablename__ = "visitors"
    visitor_id = Column(Integer, primary_key=True, autoincrement=True)
    surname = Column(String(100))
    forename = Column(String(100))
    occupation = Column(String(100))

class DinosaurType(Base):
    __tablename__ = "dinosaur_types"
    dino_type_id = Column(Integer, primary_key=True)
    species = Column(String(100), nullable=False)
    diet = Column(String(50))
    period = Column(String(50))

class Paddock(Base):
    __tablename__ = "paddocks"
    paddock_id = Column(Integer, primary_key=True)
    name = Column(String(50), nullable=False)
    description = Column(String(255))

class Resident(Base):
    __tablename__ = "residents"
    resident_id = Column(Integer, primary_key=True, autoincrement=True)
    dino_type_id = Column(Integer, ForeignKey("dinosaur_types.dino_type_id"), nullable=False)
    name = Column(String(100))
    paddock_id = Column(Integer, ForeignKey("paddocks.paddock_id"), nullable=False)
    age = Column(Integer)

    dino_type = relationship("DinosaurType")
    paddock = relationship("Paddock")

class MotionSensor(Base):
    __tablename__ = "motion_sensors"
    sensor_id = Column(Integer, primary_key=True, autoincrement=True)
    paddock_id = Column(Integer, ForeignKey("paddocks.paddock_id"), nullable=False)
    compass_direction = Column(String(16), nullable=False)
    location_type = Column(Enum("Perimeter", "Central"), nullable=False)

    paddock = relationship("Paddock")

class SensorReading(Base):
    __tablename__ = "sensor_readings"
    reading_id = Column(Integer, primary_key=True, autoincrement=True)
    sensor_id = Column(Integer, ForeignKey("motion_sensors.sensor_id"), nullable=False)
    read_date = Column(DateTime, nullable=False)
    dino_type_id = Column(Integer, ForeignKey("dinosaur_types.dino_type_id"), nullable=False)
    reading_count = Column(Integer, nullable=False)

    sensor = relationship("MotionSensor")
    dino_type = relationship("DinosaurType")