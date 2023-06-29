#! /usr/bin/env sh

set -e

echo "$0"

echo "nothing to do so far"


# git clone webserver_repo
rm -rf projectx_webserver/
git clone https://$MACHINE_USER_TOKEN@github.com/AnushaPatelHS/projectx_webserver.git

#cp all files from our code/ folder into webserver repo /<root> folder
#cp all the 
cd projectx_webserver/
rm -rf *
cp -r ../code/* .

git add --all
git commit -m "$(date)" || true
git push --all
rm -rf projectx_webserver/