# TandaChallengeAccepted

My Attempt to complete Tanda Challenge to learn Ruby On Rails.

# HOW TO SETUP (Web App)

NOTE: 
Database configuration for this web app by default requires no 
username, password because I setup my development setup with no 
credentials.

# Steps
type 'rails db:create' to create the database in your database server based on the config/database.yml.

type 'rails db:migrate' to deploy models to your database server.

type 'rails s' to start puma.

open a web browser and type 'http://localhost:3000/'. the url may vary depending on the output of puma.

go to http://localhost:3000/signup to create a new user.

you will be redirected to login page after user registration. log in using your email and password.

when you successfully log in, you will see dashboard (http://localhost:3000/dashboard)



