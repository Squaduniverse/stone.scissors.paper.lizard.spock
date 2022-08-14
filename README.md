Wenn Sie sich nicht entscheiden können, wer zuerst im Spiel beginnt. Dann gibt es nur eine Möglichkeit:

When you can't decide who will start first in the game. Then there is only one option: 

Cuando no puedes decidir quién comenzará primero en el juego. Entonces solo hay una opción:

# stone.scissors.paper.lizard.spock

# Instructions

# local
Run in console

  virtualenv environment
  source ./environment/bin/activate
  pip3 install -r requirements.txt
  python3 -m flask run

# Docker
Run in console

  docker build --tag python-docker:v1.0.0 .
  docker run -d -p 3000:8080 --name rest-server python-docker:v1.0.0


# Blogs
[Installing private Python packages in Docker images](https://medium.com/packagr/installing-private-python-packages-in-a-docker-images-fb1872409ed0)

[Performing an HTTP Request in Python Tutorial](https://www.datacamp.com/tutorial/making-http-requests-in-python)

[The Right Way to Build an API with Python](https://towardsdatascience.com/the-right-way-to-build-an-api-with-python-cd08ab285f8f)


# information content

bin runer bin used to start commands or programs, our case run_app, example make-person

build folder used for bin

env environment used for python 

flash_app the api http that use flash, we will use this app to expose the http process 

package example package in on blog to show how to set up environment and docker file

Dockerfile instructions that build a image

Make file has the steps used to generate the environment for a python service

setup.py this file is used to make the build using wheel in make file is the command

SSPES.txt python logic stone.scissors.paper.lizard.spock


## Our plan: 

### 1. Basic information Python :snake:

### 2. How yo make a stone :punch: scissors :v: paper :hand: lizard :ok_hand: spock :metal: with interface in python

### 3. test product

### 4. publish 
