#!/bin/bash
SPTH='/home/ubuntu/<repo>'

echo "Starting the Build"

cd $SPTH

cat $SPTH

heroku container:login

echo "Logged into the container"

heroku create -a <appname>

echo "Application created"

heroku container:push web -a <appname>

heroku container:release web -a <appname>

echo "Opening the browser"

heroku open


