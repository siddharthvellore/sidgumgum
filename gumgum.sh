#!/bin/bash
SPTH='/home/ubuntu/sidgumgum'

echo "Starting the Build"

cd $SPTH

cat $SPTH

heroku container:login

echo "Logged into the container"

heroku create -a sidgumgum

echo "Application created"

heroku container:push web -a sidgumgum

heroku container:release web -a sidgumgum

echo "Opening the browser"

heroku open


