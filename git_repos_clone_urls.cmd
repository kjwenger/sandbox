curl -s -u "kjwenger@yahoo.com:z6&sdio" https://api.github.com/users/kjwenger/repos?per_page=1000 | ^
grep clone_url | ^
sed -e "s/^.*\(https.*git\).*$/\1/g" | ^
sort > git_repos_clone_urls.txt