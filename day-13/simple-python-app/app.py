from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, world! Welcome to a new unviverse!'

if __name__ == '__main__':
    app.run()
