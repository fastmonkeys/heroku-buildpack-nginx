build: build-heroku-16 build-cedar-14

build-heroku-16:
	@echo "Building Nginx in docker for heroku-16..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" heroku/heroku:16-build bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

build-cedar-14:
	@echo "Building Nginx in docker for cedar-14..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" heroku/cedar:14 bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

shell-heroku-16:
	@echo "Opening heroku-16 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" -e "PORT=5000" heroku/heroku:16-build bash -c 'cd /buildpack; bash'
	@echo ""

shell:
	@echo "Opening cedar-14 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" -e "PORT=5000" heroku/cedar:14 bash -c 'cd /buildpack; bash'
	@echo ""
