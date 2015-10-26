###How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to revert back to an old version of a file if needed (e.g. the changes made broke the program, the old version had a better runtime) or read why a certain change was made.

###What is a commit?
A commit is the command that takes a snapshot to record all changes made since the previous commit.

###What are the best practices for commit messages?
You should make your commit messages short. Start out with a summary of 50 characters or less. You may add a short paragraph that goes into more detail if needed. You may also add a list that are separated by blank lines, use bullets, and use hanging indentation.

###What does the HEAD^ argument mean?
The last commit.

###What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. git add FILE_NAME(S)
2. git commit -m "Commit message"
3. git push origin BRANCH_NAME

###Write a handy cheatsheet of the commands you need to commit your changes?
git status: checks the status of the files and directories.
git add FILE_NAME(S): stages file(s) to be commited
git checkout BRANCH_NAME: change branches

###What is a pull request and how do you create and merge one?
A pull request is when you submit your modified files to the repo to have them be merged with the master branch. You have to go into your terminal, cd into the project's directory, and type the following commands:
>$ git checkout master
>$ git pull origin master
>$ git checkout BRANCH_NAME
>$ git merge master
>$ git push origin BRANCH_NAME
Open the Github repo. Click on the green button that says "Compare & pull request". Double check that you are in the correct fork/repo. Then, click on the green button that says "Merge pull request". Confirm the merge by clicking on the "Confirm merge" button.

###Why are pull requests preferred when working with teams?
Someone else can review the changes you made, add comments, and decide if the changes should be merged or if it is not ready yet.