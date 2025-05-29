from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello Dear Welcome from Flask deployed by Jenkins! and now its suto trigged by the webhook"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)