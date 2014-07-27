#!/bin/bash
read -e -p "Branch to merge: " branch
env -i git merge $branch
env -i git push -u origin master
env -i git push -u heroku master
heroku run rake db:migrate
heroku open