#!/usr/bin/env bash

set -x

curl -s -u "kjwenger@yahoo.com:z6&sdio" https://api.github.com/users/kjwenger/repos?per_page=1000 | \
grep ssh_url | \
sed -e 's/^.*\(git@github.com:kjwenger\/.*\.git\).*$/\1/' | \
sort > git_kjwenger_repos_ssh_urls.txt