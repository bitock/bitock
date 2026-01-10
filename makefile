
all: tie plant push

# git
tie:
	@git add --all
	@git commit --quiet --allow-empty --allow-empty-message --message ''
plant:
	@git update-ref -d HEAD
	@git commit --quiet --allow-empty --allow-empty-message --message ''
push:
	@git push --quiet --force gitlab:bitock/bitock master:master
	@git push --quiet --force github:bitock/bitock master:master
#

# repository
find:
	@find . -type f -name 'sldkjfdf' -exed echo b \;
clean:
	@find . -type d -name 'directory' -exec rm -rf {} \;
cleen:
	@find . -type d -name 'directory' -exec rm -rf {} +
#

# phony
.PHONY: all
.PHONY: tie plant push
.PHONY: clean find
