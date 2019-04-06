#!/bin/bash
SPTH='/home/ubuntu/sidgumgum'

echo "Starting the Build"

cd $SPTH

cat $SPTH

heroku container:login

heroku create -a sidgumgum3

heroku container:push web -a sidgumgum3

heroku container:release web -a sidgumgum3

echo "Opening the browser"

heroku open


