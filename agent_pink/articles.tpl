{% autoescape None %}
<!doctype html>
<html>
	<head>
		<link rel="stylesheet" href="/static/style.css">
		<title>Hello World</title>
	</head>
	<body>
		<h1 class="title masthead"><a href="/articles/">Agent Pink</a></h1>
		{% for article in articles %}
		<div class="article">
			<h1 class="title"><a href="/articles/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
			<h2 class="meta title">{{ article.meta["author"] }}&mdash;{{ article.meta["date"] }}</h1>
			<div class="contents">
				{{ article.contents }}
			</div>
		</div>
		{% end %}
	</body>
</html>
