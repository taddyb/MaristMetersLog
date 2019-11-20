from flask import Flask, escape
app = Flask(__name__)

@app.route('/')
def index():
    return 'index'

from flask import render_template

@app.route('/hello/')
@app.route('/hello/<name>')
def hello(name=None):
    return render_template('hello.html', name=name)
