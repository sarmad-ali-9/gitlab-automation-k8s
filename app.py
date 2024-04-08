from flask import Flask

app = Flask(__name__)

@app.route("/panasia")
def hello_world():
    return "Hello World (task for panasia)"

if __name__ == "__main__":
    app.run(host="0.0.0.0")
