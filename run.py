
from flask import Flask, render_template, request
import register
import login


app = Flask(__name__)

@app.route('/', methods=["GET", "POST"])
def index():
    if request.method == "POST":
        username=request.form.get("username")
        password=request.form.get("password")
        
        m = login.check(username, password)

        return render_template("index.html", message=m)

    return render_template("index.html")

@app.route('/login', methods=["GET", "POST"])
def login_template():
    if request.method == "POST":
        username=request.form.get("username")
        password=request.form.get("password")
        
        m = login.check(username, password)

        return render_template("index.html", message=m)

    return render_template("index.html")


@app.route('/register', methods=["GET", "POST"])
def register_template():
    if request.method == "POST":
        name=request.form.get("name")
        username=request.form.get("username")
        password=request.form.get("password")
        hashType = request.form.get("hashType")

        status = register.save(name, username, password, hashType)

        if status:
            return render_template("register.html", message="Registration successful")
        else:
            return render_template("register.html", message="Registration failed")
      

    return render_template("register.html")

# main driver function
if __name__ == '__main__':
	app.run(debug=True)
