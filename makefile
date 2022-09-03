# Serve the documentation
.PHONY: serve
serve:
	pipenv run mkdocs serve

# Deploy the documentation
.PHONY: deploy
deploy:
	pipenv run mkdocs gh-deploy

UPDATEMSG='updating'
.PHONY: update
update:
	git add -A && \
	git commit -m "$(UPDATEMSG)" && \
	git push
