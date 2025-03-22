from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, world! Welcome to a new unviverse of just living life the way it is!'

if __name__ == '__main__':
    app.run()
