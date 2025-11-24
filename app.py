from flask import Flask

app = Flask(__name__)

@app.get("/")
def home():
    return "Hello from CI/CD on Kubernetes!\n"

if __name__ == "__main__":
    # local dev run (Docker will use gunicorn)
    app.run(host="0.0.0.0", port=8080)
