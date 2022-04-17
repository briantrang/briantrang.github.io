# Generate latest build files in case you forget
echo "Generating build files in case it was forgotten"
npm run build

# Commit strangling build files
echo "Commiting strangling build files"
git add .
git commit -m "Commiting build files"
git push

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

echo "Remove temp build folder in parent"
rm -rf ../build