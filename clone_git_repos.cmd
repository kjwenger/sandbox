for /F "tokens=*" %%A in (git_repos_clone_urls.txt) do call clone_git_repo.cmd %%A