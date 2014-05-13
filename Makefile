publish:
	grunt build && git subtree push --prefix dist github gh-pages
