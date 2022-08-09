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
.PHONY:
etwas-so:
	python3 -m venv env
	source env/bin/activate


# create a virtual environment, and activate it
.PHONY:
install-faker:
	pip install Faker

# create a virtual environment, and activate it
.PHONY:
install-faker:
	pip install Faker

# WARNING: You are using pip version 22.0.4; however, version 22.2.2 is available.
# You should consider upgrading via the '/Users/revi/dev/Squaduniverse/stone.scissors.paper.lizard.spock/env/bin/python3 -m pip install --upgrade pip' command.
.PHONY:
update-pip:
	/Users/revi/dev/Squaduniverse/stone.scissors.paper.lizard.spock/env/bin/python3 -m pip install --upgrade pip


# # To build the python

.PHONY:
install-whell:
# install wheel (to build packages in the bdist_wheel format)
	pip install wheel

.PHONY:
install-whell:
# create the package
	python setup.py bdist_wheel


# install wheel (to build packages in the bdist_wheel format)
pip install wheel
# create the package
python setup.py bdist_wheel