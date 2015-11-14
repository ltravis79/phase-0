How does tracking and adding changes make developers' lives easier?
	Tracking and adding changes helps because it allows developers to go back and use previous files if they need to, rather than having to go back and manually correct a file with problems.

What is a commit?
	A commit is the git version of a save point for your project.

What are the best practices for commit messages?
	For commit messages, the best practice is to keep headers short and bodies more descriptive.  You should also keep headers to about 50 characters and bodies to about 76 characters in order to format nicely in most terminals.  For your text, you should also write in the imperative present tense.

What does the HEAD^ argument mean?
	HEAD^ refers to the previous commit, as opposed to the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
	The 3 three stages of a git change are untracked files, modified, and committed.
	A new file will be untracked.  TO move it to the commit once it is modified, use the add command.  When you are ready to commit the change, use the commit command.

Write a handy cheatsheet of the commands you need to commit your changes?
	git pull
	git checkout -b branch_name
	git add file_name
	git commit -m "commit message"

What is a pull request and how do you create and merge one?
	A pull request is the process of getting your updated branch merged into the master branch, once it has been reviewed.  
	To create one and merge it, first push your branch to the origin (git push origin branch_name).
	Next, go to the repo on GitHub and click on the pull request.  Review the changes, and if they are correct, you can merge it from the site.

Why are pull requests preferred when working with teams?
	Pull requests are preferred because they allow your team the chance to review your work, collaborate, and make sure everything is good before the changes are made permanent.  Without the pull request, you would be updating the master directly, which could be a bad idea.

