build:
	docker build --rm -t r_snptest .
push:
	docker tag r_snptest csoriano/r_snptest:2.5.2
	docker push csoriano/csoriano/r_snptest:2.5.2
login:
	docker login
