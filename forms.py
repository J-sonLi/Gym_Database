from flask_wtf import Flaskform
from wtforms import StringField , SubmitField
from wtforms.validators import DataRequired, Length , Email, Equalto
from datetime import date
from wtforms.fields.html5 import DateField , DateTimeField


# Data will only be inputted by Employees

# Form to enter into database

class RegistrationForm(FlaskForm):
    id = StringField('ID',
        validators[DataRequired()])
    fname = StringField('First Name',
        validators[DataRequired()])
    lname = StringField('Last Name',
        validators[DataRequired()])
    phone = StringField('Phone Number', 
        validators=[DataRequired(),Length(min=0,max=15)])
    email = StringField('Email',
        validators=[DataRequired(),Email()])
    dob = StringField('Date of Birth',
        validators=[DataRequired()]),
    sex = StringField('Sex')
    startdate = DateField('Start Date',
        format='%Y-%m-%d',validators=[DataRequired()])
    enddate = DateField('End Date',
        format='%Y-%m-%d',validators=[DataRequired()])
    gymbranch = StringField('Gym Branch',
        validators=[DataRequired()])
    submit = SubmitField('Submit')
 