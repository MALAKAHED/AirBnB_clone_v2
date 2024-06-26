#!/usr/bin/python3
"""This module defines a Many-Many relationship between amenities and places"""
import os
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship

from models.base_model import BaseModel, Base


class Amenity(BaseModel, Base):
    """This class defines an Amenity by various attributes"""
    _tablename_ = 'amenities'
    name = Column(
        String(128), nullable=False
    ) 
place_amenity = db.Table('place_amenity',
     db.Column('place_id', db.Integer, db.ForeignKey('place.id')),
     db.Column('amenity_id', db.Integer, db.ForeignKey('amenity.id'))
)
class Places(db.Model):
id = db.Column (db.Integer, primary_key=True)
name = db.Column (db.String(60))
place_amenities = relationship('Amenity', secondary="place_amenity", viewonly=False)
def _repr(self):
return f'<Place: {self.name}>'


class Amenity(db.Model):
id = db.Column (db.Integer, primary_key=True) 
name = db.Column (db.String(60))
def repr(self):
return f'<Amenity: {self.name}>'
