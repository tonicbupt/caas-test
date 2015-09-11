# coding: utf-8

from flask import Flask


app = Flask(__name__)


@app.route('/')
def index():
    return 'index'


@app.route('/<message>/')
def echo(message):
    return 'echo %s' % message


@app.route('/exception/')
def exception():
    raise


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
