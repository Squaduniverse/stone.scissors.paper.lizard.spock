from setuptools import setup

setup(
    name='stone.scissors.paper.lizard.spock',  # the name of the package
    version='1.0',
    packages=['process', 'example-process'],  # contains our actual code
    author='',
    author_email='',
    description='stone.scissors.paper.lizard.spock',
    scripts=['bin/make-person', 'bin/run_app'],  # the launcher script
    install_requires=[
        'faker==2.0.2', 'flask==2.2.2', 'flask_restful==0.3.9']  # our external dependencies
)
