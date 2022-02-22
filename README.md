# GitPR 

Initial commands
`git config --global user.name "rebecca"
git config --global user.email "rebecca@xyz.com"`

Create a new reporistory**
`git clone https://gitlab-cgi.stackroute.in/rebecca/xyz.git
cd xyz
git add .
git commit -m "Added zyx feature"
git push -u origin master`

Push an existing folder**
`cd exitsing_folder
git init
git remote add origin https://gitlab-cgi.stackroute.in/rebeccamoses.dmello/xyz.git
git add .
git commit -m "Initial commit"
git push -u origin master`

Push an existing Git repository
`cd existing_repo
git remote rename origin old-origin
git remote add origin https://gitlab-cgi.stackroute.in/rebecca/xyz.git
git push -u origin --all
git push -u origin --tags`

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



