#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

echo @@@buildComplete
# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

echo @@@commitComplete

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:aud0325/aud0325.github.io.git master
#https://github.com/aud0325/aud0325.github.io.git
# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

echo @@@pushComplete

cd -
