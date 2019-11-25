from flask import Flask, escape
app = Flask(__name__)

@app.route('/')
def helloWorld():
  return 'Hello World'


def create_app():
    from . import db
    db.init_app(app)

    return app