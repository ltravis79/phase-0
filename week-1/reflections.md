# 1.1 Thinking About Time

I spent time researching the pomodoro technique, the videos about creating habits and using tiny habits, as well as the tips about practice and persistence in the Learn Ruby the Hard Way link.  Time Boxing is a method of time management that uses specific time limits for working on tasks, then reevaluating and repeating if needed.  The pomodoro method would fall into time boxing, but with a preset amount of time.  I think that time boxing could definitely be used in Phase 0 to try and keep myself from getting carried away researching topics for too long.  I'm not sure I really have a current time management strategy.  I try to use lists and set general time limits, but I don't follow them religiously, which causes problems for me sometimes.  I'm a little curious to try out the pomodoro method in Phase 0, because I think the shorter, 25 minute blocks of time, are different than what I'm currently doing.  The counter-intuitive tips for productivity post mentioned that giving yourself too much time can actually invite procrastination, which I think is something that I do by not setting good time limits.  I'm hoping the pomodoro approach is a good way to counter that for me.  My general approach to time management in Phase 0 is going to be that I continue to plan with lists, having an idea of how many tasks I need to keep up on in the given day, especially accounting for certain days of the week that are busier than others in other aspects of my life.

# 1.2 The Command Line

A shell is an environment that lets a user interact with their computer using a command prompt.  Bash is a specific shell, with its own set of commands that are available for use.

Most challenging for me in this unit was some of the minor differences between the commands in bash and the commands on a PC, which I use at work.  I find myself thinking of the wrong syntax or wrong command out of habit, but I was able to use them all and have started getting used to them.

I think that to me, two of the more important commands are simply ls and pwd.  I find it's easy to forget which directory I'm working with, and a pwd every once in awhile will tell me.

pwd displays the current directory name

ls lists the files within the directory

mv moves a file to another directory

cd will change the current directory

../ will run a file from the parent directory

touch is used to create a new empty file

mkdir creates directories

less is used to display the contents of a text file

rmdir removes a directory

rm removes a file, as opposed to a directory

help displays the help file for the bash shell

# 1.4 Forking and Cloning
To instruct someone to create a new repo, I would have them first go to GitHub and sign in, then from their profile page, click the plus sign and then create a new repository.  They can then give it a name and a set it as public or private, depending on their needs.  

To fork a repo, the user should sign in to GitHub, navigate to the repo that they want, and then they can click the fork button in the upper right area of the page.  GitHub will then fork the repo and put a copy in the user's own directory.

To clone a repo, like the newly created one, I would instruct the user to make their way to the repository page in GitHub, where they can copy the clone link from the right hand side.  Then the user should open a terminal, move to the directory where they want to place the local copy of the repo, and enter the command git clone along with the URL they copied.

A user would want to fork a repo rather than creating a new one because forking will automatically copy all of the files they need in their current state.  If you wanted a copy of a repo to work with but didn't fork it, you would have to create a new repo, then copy every single file you need on your own.  It's much less convenient.

Setting up git and GitHub was not much of a struggle for me fortunately.  But I did run into issues trying to delete my local clone.  I kept looking for a git command, but all I needed was a shell command to remove the files and directories.  It was a good reminder that taught me that working with git and repos is not entirely done with git alone, you need to remember other shell commands.