.PHONY: publish

publish:
	rm -rf public/*
	hugo
	cd public && git add . \
		&& git commit -m "make publish" \
		&& git push origin gh-pages
