from tornado import web
from . import articles

article_list = articles.load("articles/*.md")
article_map = articles.article_map(article_list)

class Articles(web.RequestHandler):
    def get(self):
        env = {"articles": article_list}
        self.render("articles.tpl", **env)

class Article(web.RequestHandler):
    def get(self, slug):
        env = {"article": article_map[slug]}
        self.render("article.tpl", **env)
