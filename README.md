# GitPR 

Initial commands
1. git config --global user.name "rebecca"
2. git config --global user.email "rebecca@xyz.com"

Create a new reporistory**
1. git clone https://gitlab-cgi.stackroute.in/rebecca/xyz.git
2. cd xyz
3. git add .
4. git commit -m "Added zyx feature"
5. git push -u origin master

Push an existing folder**
1. cd exitsing_folder
2. git init
3. git remote add origin https://gitlab-cgi.stackroute.in/rebeccamoses.dmello/xyz.git
4. git add .
5. git commit -m "Initial commit"
6. git push -u origin master

Push an existing Git repository
1. cd existing_repo
2. git remote rename origin old-origin
3. git remote add origin https://gitlab-cgi.stackroute.in/rebecca/xyz.git
4. git push -u origin --all
5. git push -u origin --tags

Git ssl error
1. git config --global http.ssl verify false

Issue with pushing - showing fatal error // git remote -v
1. git remote remove origin
2. git remote add origin <your repo url>
3. git remote -v
4. git push origin master
  
** Forks and Pull Requests -  https://youtu.be/a_FLqX3vGR4 **
1. Copy of initial repo is called Fork - UserA, Upstream repo - Original repo
2. Copy link of the original repo
3. git clone https://github.com/RebeccaDmello/xyz.git
4. cd xyz/
5. git remote -v
6. git remote add upstream https://github.com/tranvnb/xyz.git
7. git remote -v
8. git fetch upstream
9. git checkout master [OR]
10. git checkout main
11. git merge upstream/main [check if upto date or not]
12. ls
13. Make Changes your repo
14. git status
15. git diff
16. git add -A
17. git commit -m "Android App"
18. git push
19. Compare across forks

** Adding Repo to your own GitHub **
1. Create a repo on Github
2. Create a local repo of same Name
3. git init
4. git add .
5. git commit -m "On Main"
6. git remote add origin https://github.com/RebeccaDmello/PHP.git
7. git push --force origin main



