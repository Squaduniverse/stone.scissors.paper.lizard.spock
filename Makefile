.PHONY:
## PARA CORRER LOS COMANDOS DE PHONY HACER :
# utilizar translate
# use translate
# en la terminal 
#  -  make [command]
#  -  make etwas-so

##  Steps to ... Docker file with variables

# 
# Blogs
# Installing private Python packages in Docker images
# https://medium.com/packagr/installing-private-python-packages-in-a-docker-images-fb1872409ed0

# Performing an HTTP Request in Python Tutorial
# https://www.datacamp.com/tutorial/making-http-requests-in-python

# The Right Way to Build an API with Python
# https://towardsdatascience.com/the-right-way-to-build-an-api-with-python-cd08ab285f8f

# install Faker

etwas-so:
	python3 -m venv env
	source env/bin/activate


# create a virtual environment, and activate it

install-faker:
	pip install Faker

# WARNING: You are using pip version 22.0.4; however, version 22.2.2 is available.
# You should consider upgrading via the '/Users/revi/dev/Squaduniverse/stone.scissors.paper.lizard.spock/env/bin/python3 -m pip install --upgrade pip' command.

update-pip:
	/Users/revi/dev/Squaduniverse/stone.scissors.paper.lizard.spock/env/bin/python3 -m pip install --upgrade pip


# # To build the python


install-whell:
# install wheel (to build packages in the bdist_wheel format)
	pip install wheel


setup-whell:
# create the package
	python setup.py bdist_wheel


### Comands to run the python programs

# run game in console - make run-game-console

run-game-console:
	python process/SSPES.py

# run game - make run-api

run-api:
	python process/API.py

# run game - make run-game-console

run-game:
	python process/game.py




#  Instalar pipx
#  Install pipx with brew 
#  pipx [program]
# brew update && brew upgrade pipx

# If you installed python using the app-store, replace `python` with `python3` in the next line.

which-python:
	which python

# mostrar la lista de las libreris de pip
pip-list:
	pip list

# generate the requirements.txt

pip-freeze-local-to-requirements:
	pip freeze  --local > requirements.txt

# Tutorial de Python: virtualenv y por qué deberías utilizar entornos virtuales
# https://www.youtube.com/watch?v=N5vscPTWKOk&ab_channel=CoreySchafer

# Genere una salida adecuada para un archivo de requisitos.
salida-de-pip:
	python -m pip freeze


# Genere un archivo de requisitos y luego instálelo en otro entorno.

generar-archivo-de-requisito-1:
	python -m pip freeze > requirements.txt
	
generar-archivo-de-requisito-2:
	python -m pip install -r requirements.txt

# open file with cat
cat-requirements:
	cat requirements.txt



####### Instrucciones para hacer un environment

install-virtualenv:
	pip install virtualenv

create-environment:
	virtualenv env

# Manually in terminal  source ./environment/bin/activat
activate-environment:
	source ./env/bin/activate

check-libraries-installed:
	pip list

install-libraries:
	pip install -r libraries.txt

# run on console to stop listen env
deactivate:
# run on console
	deactivate
	

### Instructions to generate libraries.txt ###

generate-libraries-txt:
	pip freeze --local > libraries.txt

### Remove environment 
remove-env:
	rm -rf env

docker-system-prune-all:
	docker system prune -af

### Run docker build
build-app:
	docker-compose up -d build

app:
	make docker-system-prune-all
	make build-app

remove-las-container:
	docker stop $(docker ps -l -q)
	docker rm $(docker ps -l -q)

remove-docker-image:
	docker rmi game_build 

remove-c-i:
	make remove-container
	make remove-docker-image

find-image:
	docker images -f=reference='game*'

find-container:
	docker ps -f ancestor=game_build

remove-image-container:
	docker stop $(docker ps -f ancestor=game_build -q)
	docker rm $(docker ps -f ancestor=game_build -q -a)
	docker rmi $(docker images -f=reference='game*' -q)

# docker filter
# https://github.com/moby/moby/blob/10c0af083544460a2ddc2218f37dc24a077f7d90/docs/reference/commandline/images.md#filtering



######### Test Docker python
# 
run-flask-local-test:
	python -m flask --app process/app.py run  




##
build-python-test:
	docker build --tag python-docker-test .

tag-image:
	docker tag python-docker-test:latest python-docker-test:v1.0.0

remove-image-taged:
	docker rmi python-docker-test:v1.0.0

run-pdt:
	docker run -d -p 8000:5000 --name rest-server python-docker-test

build-with-tag:
	docker build --tag python-game:v1.0.0 .

run-container-tag:
	docker run -d -p 3000:5000 --name rest-server python-game:v1.0.0
