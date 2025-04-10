
.PHONY: tie plant push

tie:
	@git add --all
	@git commit --quiet --allow-empty --allow-empty-message --message ''

plant:
	@git update-ref -d HEAD
	@git commit --quiet --allow-empty-message --message ''

push:
	@git push --force github master:master
