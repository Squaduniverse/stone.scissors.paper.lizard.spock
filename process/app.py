from crypt import methods
from flask import Flask, url_for

from game import game

app = Flask(__name__)

@app.route('/')
def index():
    return 'Choose your option and put it in url'


@app.route('/<user_choice>', methods=['GET'])
def choice(user_choice):
    # game('r')
        return_game = game(user_choice)
        print('return game : ', return_game)

        return {'user_choice': user_choice, 'return_game': return_game}, 200

