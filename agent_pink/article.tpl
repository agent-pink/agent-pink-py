<!doctype html>
<html>
	<head>
		<title>Hello World</title>
	</head>
	<body>
		<h1><a href="/articles/">Agent Pink</a></h1>
		<div>
			<h1><a href="/articles/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
			<h2>{{ article.meta["author"] }}&mdash;{{ article.meta["date"] }}</h1>
			<div>
				{{ article.contents }}
			</div>
		</div>
	</body>
</html>
