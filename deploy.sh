#!/bin/bash

zip -r bitcloset-api-oauth2callback.zip node_modules
cd src
zip -r ../bitcloset-api-oauth2callback.zip *
cd ../

$HOME/.local/bin/aws --profile=long-div --region=us-east-1 lambda update-function-code --zip-file=fileb://bitcloset-api-oauth2callback.zip --function-name bitcloset-api-oauth2callback-handler