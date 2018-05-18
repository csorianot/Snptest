build:
	docker build --rm -t snptest .
push:
	docker tag snptest csoriano/snptest:2.5.2
	docker push csoriano/csoriano/snptest:2.5.2
login:
	docker login
