from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello world, Welcome to a new univere. All i want to say is dont give up, keep looking! stay hungry and the food will be served!'

if __name__ == '__main__':
    app.run()
