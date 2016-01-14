from tornado import web
from . import handlers


app = web.Application([
    (r"/", handlers.Articles),
    (r"/articles/", handlers.Articles),
    (r"/articles/(\w+)", handlers.Article),
])
