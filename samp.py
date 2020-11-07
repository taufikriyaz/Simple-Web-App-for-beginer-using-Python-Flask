from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail, Message
from flask_mail import Mail
from flask import flash




app = Flask(__name__)
app.secret_key = "abc"
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = 'taufikriyaz@gmail.com',
    MAIL_PASSWORD=  'tawheedt1'
)

mail = Mail(app)







app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/resturant'
db = SQLAlchemy(app)

class Contacts(db.Model):
    slno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80),  nullable=False)
    phone_num = db.Column(db.String(12),  nullable=False)
    subject = db.Column(db.String(120), nullable=False)
    msg = db.Column(db.String(120),  nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(30),  nullable=False)

class Booktable(db.Model):
    slno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80),  nullable=False)
    email = db.Column(db.String(30), nullable=False)
    phone = db.Column(db.String(12),  nullable=False)
    date = db.Column(db.String(12), nullable=False)
    time = db.Column(db.String(6), nullable=False)
    people = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)





@app.route("/")
def index():
    return render_template('index.html')


@app.route("/home")
def home():
    return render_template('index.html')


@app.route("/about")
def about():
    return render_template('index.html')

@app.route("/menu")
def menu():
    return render_template('index.html')

@app.route("/special")
def specials():
    return render_template('index.html')

@app.route("/events")
def events():
    return render_template('index.html')

@app.route("/gallery")
def gallery():
    return render_template('index.html')


@app.route("/chefs")
def chefs():
    return render_template('index.html')




@app.route("/contact", methods = ['GET' ,'POST'])
def contact():
    if (request.method == 'POST'):
        """ Add entry to the database  """
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        subject = request.form.get('subject')
        message = request.form.get('message')

        entry = Contacts(name=name, phone_num = phone, subject=subject, msg = message, email = email, date=datetime.now())
        db.session.add(entry)
        db.session.commit()

        flash("message sent successful")
        mail.send_message(" New message from " + name,
                          sender="email",
                          recipients=["taufikriyaz@gmail.com"],
                          body=subject + "\n" + phone
                          )
    return render_template('index.html')





@app.route("/booktable",  methods=['GET', 'POST'])
def booktable():
    if (request.method == 'POST'):
        """ Add entry to the database  """
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        date = request.form.get('date')
        time = request.form.get('time')
        people = request.form.get('people')
        message = request.form.get('message')

        post = Booktable(name=name, phone = phone,  msg = message, email = email, date=date, time=time, people=people)
        db.session.add(post)
        db.session.commit()
        if db.session.commit() :
            flash("message sent successful")
        mail.send_message(" New Table Booking message from " + name,
                          sender="email",
                          recipients=["taufikriyaz@gmail.com"],
                          body=message + "\n" + phone
                          )

    return render_template('index.html')

app.run(debug=True)