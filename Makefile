.PHONY:

create-environment:
	virtualenv environment

steps:
	pip3 install Flask
#   pip freeze  --local > requirements.txt
# 	pip3 freeze | grep Flask >> requirements.txt
# 	touch app.py

install-requirements:
	pip3 install -r requirements.txt

run:
	python3 -m flask run

run-2:
	python3 -m flask --app process/app.py run

build:
	docker build --tag python-docker .

build-with-tag:
	docker build --tag python-docker:v1.0.0 .

show-images:
	docker images

tag:
	docker tag python-docker:latest python-docker:v1.0.0

remove-image-taged:
	docker rmi python-docker:v1.0.0

list-containers:
	docker ps -a

run-container:
	docker run -d -p 3000:5000 --name rest-server python-docker:v1.0.0

run-container-2:
	docker run -d -p 3000:8080 --name rest-server python-docker:v1.0.0

prune:
	docker system prune -af

create:
	make build-with-tag
	make run-container-2