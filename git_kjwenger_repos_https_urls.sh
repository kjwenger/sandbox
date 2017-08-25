#!/usr/bin/env bash

# set -x

curl -s -u "kjwenger@yahoo.com:z6&sdio" https://api.github.com/users/kjwenger/repos?per_page=1000 | \
grep clone_url | \
sed -e 's/^.*\(https:\/\/github.com\/kjwenger\/.*\.git\).*$/\1/' | \
grep -v "sandbox.git" | \
grep -v "Spoon-Knife.git" | \
grep -v "com.u14n" | \
sort > git_kjwenger_repos_https_urls.txt
