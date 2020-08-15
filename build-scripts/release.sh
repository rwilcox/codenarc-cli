#!/bin/bash


version=$1

if [[ $1 == '--help' ]]
then
    echo "example"
    echo "    $ build-scripts/release.sh v1.0.0 'new release' rwilcox codenarc-cli"
    exit
fi
   
text=$2
user=$3
repo=$4


token=$(git config  github.token)

npx publish-release --token=$token --owner=$user --repo=$repo --tag=$1 --assets=target/codenarc-wrapper.jar --notes="$text" --name=$tag

