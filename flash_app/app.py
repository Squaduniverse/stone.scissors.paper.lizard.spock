from flask import Flask
from flask_restful import Resource, Api, reqparse

app = Flask(__name__)
api = Api(app)


class Users(Resource):
    def get(self):
        parser = reqparse.RequestParser()  # initialize
        parser.add_argument('option', required=True)
        result = 'winner'
        # logic here
        return {'result': result}, 200  # return data and 200 OK


api.add_resource(Users, '/users')  # add endpoints

# if __name__ == '__main__':
#   app.run()  # run our Flask app
