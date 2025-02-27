build: build-heroku-22 build-heroku-20 build-heroku-18 build-heroku-16 build-cedar-14

build-heroku-22:
	@echo "Building Nginx in docker for heroku-22..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" heroku/heroku:22-build bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

build-heroku-20:
	@echo "Building Nginx in docker for heroku-20..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" heroku/heroku:20-build bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

build-heroku-18:
	@echo "Building Nginx in docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" heroku/heroku:18-build bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

build-heroku-16:
	@echo "Building Nginx in docker for heroku-16..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" heroku/heroku:16-build bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

build-cedar-14:
	@echo "Building Nginx in docker for cedar-14..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" heroku/cedar:14 bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

shell-heroku-22:
	@echo "Opening heroku-22 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" -e "PORT=5000" heroku/heroku:22-build bash -c 'cd /buildpack; bash'
	@echo ""

shell-heroku-20:
	@echo "Opening heroku-20 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" -e "PORT=5000" heroku/heroku:20-build bash -c 'cd /buildpack; bash'
	@echo ""

shell-heroku-18:
	@echo "Opening heroku-18 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" -e "PORT=5000" heroku/heroku:18-build bash -c 'cd /buildpack; bash'
	@echo ""

shell-heroku-16:
	@echo "Opening heroku-16 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" -e "PORT=5000" heroku/heroku:16-build bash -c 'cd /buildpack; bash'
	@echo ""

shell:
	@echo "Opening cedar-14 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" -e "PORT=5000" heroku/cedar:14 bash -c 'cd /buildpack; bash'
	@echo ""
