#!/bin/sh
while getopts v: option
do
case "${option}"
in
v) TAG=${TAG};;
esac
done

git submodule add -f https://github.com/madson7/docker-environment.git
git submodule foreach --recursive git checkout $TAG
git submodule foreach --recursive git pull

cd docker-environment
cat .env-example > ../.env.example
cat .env-example > ../.env
cat .gitignore >> ../.gitignore
cat .dockerignore >> ../.dockerignore
cat readme.md >> ../README.md

make