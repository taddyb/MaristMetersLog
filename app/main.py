from flask import Flask, escape
app = Flask(__name__)

@app.route('/')
def helloWorld():
  return 'Hello World'
