from tornado import web

class Hello(web.RequestHandler):
    def get(self):
        self.write("Hello World")

app = web.Application([
    ("/", Hello),
])
