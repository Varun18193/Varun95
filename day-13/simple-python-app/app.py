from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

# Home route
@app.route('/')
def home():
    return render_template('index.html')

# Dynamic route with parameter
@app.route('/hello/<name>')
def hello(name):
    return f"Hello, {name}!"

# Form submission route
@app.route('/submit', methods=['POST'])
def submit():
    data = request.form.get('data')
    return jsonify({"message": f"You submitted: {data}"})

# Run the application
if __name__ == '__main__':
    app.run(debug=True)
