#!/bin/bash

env -i git push heroku master
heroku run rake db:migrate