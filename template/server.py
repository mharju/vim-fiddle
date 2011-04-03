from bottle import run, get, static_file
import random
import os

@get('/static/:name#.+#')
def get_static(name):
    return static_file(name, root='.')

port = 8000 + random.randint(0, 1000)
with open('/tmp/fiddle.addr', 'w') as f:
    f.write('http://localhost:%d/static/index.html' % port)

run(host='localhost', port=port, reloader=True)
