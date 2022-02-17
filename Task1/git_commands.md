git init .
git status
mkdir Task1
cd Task1
echo "This is readme file for Task1 master branch" > README.md
cd ..
git add *
git commit -m "First commit"
git remote add origin git@github.com:LutskyiE/Exadel-Internship-Tasks.git
git remote -v
git branch -M main
git push -u origin main
git branch dev
git branch
git checkout dev
echo "This is test file for dev branch"> dev-branch-readme.txt
git status
git add *
git commit -m "Created dev branch and test file for it"
git push --set-upstream origin dev
git branch LutskyiE-new_feature
git checkout LutskyiE-new_feature
nano README.md
git status
echo ".*" > .gitignore
git add .
git push --set-upstream origin LutskyiE-new_feature
git pull origin dev
git checkout dev
git merge Eugene-new_feature
git pull origin main
git checkout main
git merge dev
git checkout Eugene-new_feature
echo "Task1.12" > README.md
git add README.md
git commit -m "edited README.md in Eugene-new_feature branch"
git revert bd5521f8e6243115086efb7c1a5d2624e0cbee4b
git checkout main
git pull origin
git log > log.txt
git branch -d Eugene-new_feature
git branch -D Eugene-new_feature
git push origin -d Eugene-new_feature
