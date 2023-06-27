#! /usr/bin/env sh

set -e

echo "$0"

echo "nothing to do so far"


# git clone webserver_repo
rm -rf projectx_webserver/
git clone https://$MACHINE_USER_TOKEN@github.com/begvog/projectx_webserver.git

# cp all files from our code/ folder into webserver repo /<root> folder
cd projectx_webserver/
rm -rf *
cp -r ../code/* .

git add --all
git commit -m "$(date)" || true
git push --all
