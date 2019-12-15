# Git Scripts

This directory contains a set of "git scripts" to perform specific actions
and/or automate some repetitive tasks.


### New Feature script
**File :** [new_feature.sh](./new_feature.sh)

This script is used to help developers to start a new feature on a project.  
It assumes that the git repository is set with at least a `develop` branch which
hold sources under development.  
When launched it will first check that the current branch is `develop` and that
it is up to date (regarding to its remote branch). If not the script will display
a message and exit.  
If everything OK, the script will create a new `feature/<feature-name>` branch
from the `develop` branch and checkout to this branch.
Then it will send a request to GitHub in order to automatically create a new Pull
request from the feature branch into the `develop` branch.  
Note : the `<feature-name>` is given as first argument to the script.

### New Fix script
**File :** [new_fix.sh](./new_fix.sh)

### New Version script
**File :** [new_version.sh](./new_version.sh)

### Setup Git script
**File :** [setup-git.sh](./setup-git.sh)

This script initialize a new Git repository.  
It takes the repository name as argument, if none it will ask for the user to give one.
Then it will create a directory, init a git repository in it, set a remote
and create an initial commit with a basic `README.md` file.  
At the end it will ask wether to push initial commit.  
**Important Note :** this script assume the remote URL is pointing to an existing
empty repository (on GitHub).

Example :
```
$ setup-git <repository-name>
```

