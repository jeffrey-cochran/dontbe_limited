@ECHO OFF
ECHO Deploying updates to GitHub...

:: Build the project.
hugo -t aether

:: Go To Public folder
cd public

:: Add changes to git.
git add .


:: Commit changes.
SET msg="Republishing website, %DATE% %TIME%"
git commit -m %msg%

:: Push source and build repos.
git push origin master

:: Come Back up to the Project Root
cd ..