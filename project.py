from flask import Flask, render_template, redirect, url_for
import csv
import requests
import os
import urllib3

app=Flask(__name__)

@app.route('/')
def home():
    return render_template("index.html")

@app.route("/", methods=['POST'])
def uploadFiles():

      uploaded_file = requests.files['file']
      if uploaded_file.filename != '':
           file_path = os.path.join(app.config['UPLOAD_FOLDER'], uploaded_file.filename)

         uploaded_file.save(file_path)

      return redirect(url_for('index'))

if __name__=='__main__':
    app.run(debug=True)
