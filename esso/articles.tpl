<!doctype html>
<html>
	<head>
		<title>Hello World</title>
	</head>
	<body>
		{% for article in articles %}
		<div>
			<h1>{{ article.meta["title"] }}</h1>
			<h2>{{ article.meta["author"] }}&mdash;{{ article.meta["date"] }}</h1>
			<div>
				{{ article.contents }}
			</div>
		</div>
		{% end %}
	</body>
</html>
