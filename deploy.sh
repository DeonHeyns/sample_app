#!/bin/bash

read -e -p "Enter your commit message: " commit_message
env -i git add --all
env -i git commit -m "$commit_message"
env -i git push -u origin master
env -i git push -u heroku master
heroku run rake db:migrate
heroku open