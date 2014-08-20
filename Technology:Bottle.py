#!/usr/bin/env python
from bottle import get, run

# A static route
@get('/')
def hello_world():
    return "Hello, World!"

# A route with a parameter
@get('/hello/<name>')
def hello_name(name):
    return "Hello, {0}!".format(name);

run(port = 3000)
