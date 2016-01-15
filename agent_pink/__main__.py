from __future__ import print_function
from . import app
from os  import environ
from tornado.ioloop import IOLoop

try:
    port = int(environ["PORT"])
except (KeyError, ValueError) as e:
    port = 5000

print("Listening on:", port)
app.listen(port)

IOLoop.instance().start()
