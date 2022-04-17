# Script to re push to github
echo "Copying build folder to temp parent folder"
cp -r build ../build

echo "Checking out master branch for deployment"
git checkout master

echo "Copying temp build folder from parent into master"
cp -r ../build/* .

echo "Git add all files"
git add .

echo "Git commit message"
git commit -m "Portolio update"

echo "Git push to the MOON!"
git push

echo "Going back to main branch for development"
git checkout main
