<!doctype html>
<html>
	<head>
		<link rel="stylesheet" href="/static/style.css">
		<title>Hello World</title>
	</head>
	<body>
		<h1><a href="/articles/">Agent Pink</a></h1>
		{% for article in articles %}
		<div>
			<h1><a href="/articles/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
			<h2>{{ article.meta["author"] }}&mdash;{{ article.meta["date"] }}</h1>
			<div>
				{{ article.contents }}
			</div>
		</div>
		{% end %}
	</body>
</html>
