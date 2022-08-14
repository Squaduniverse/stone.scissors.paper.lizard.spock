from flask import Flask, request
from flask_restful import Resource, Api, reqparse

from game import game

app = Flask(__name__)
api = Api(app)


class Root(Resource):
    def get(self):
        parser = reqparse.RequestParser()  # initialize
        parser.add_argument('choice', required=True)
        user_choice = request.args.get('choice')

        # game('r')
        return_game = game(user_choice)
        print('return game : ', return_game)
        # logic here
        # return data and 200 OK
        return {'user_choice': user_choice, 'return_game': return_game}, 200


api.add_resource(Root, '/')  # add endpoints


if __name__ == '__main__':
    # HOST = 'localhost'
    HOST = '0.0.0.0'
    PORT = '3000'
    app.run(HOST, PORT)  # run our Flask app on port
