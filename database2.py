from flask_sqlalchemy import SQLAlchemy
from flask import Flask
from 

app = Flask (__name__)
app.config ['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///customer.sqlite3'

db = SQLAlchemy(app)
class customers(db.Model):
   account_key = db.Column('account_key', db.Integer, primary_key = True)
   customer_key = db.Column(db.String(100))
   account_open_date = db.Column(db.String(50))


def __init__(self, account_key, customer_key, account_open_date):
   self.account_key = account_key
   self.customer_key = customer_key
   self.account_open_date = account_open_date

db.create_all()



