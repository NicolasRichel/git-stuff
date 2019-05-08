# Git Local configurations

Configurations specific to a given repository.


### Prevent commits on a specific branch

( [source](https://stackoverflow/questions/40462111/git-prevent-commits-in-master-branch) )

Create a pre-commit hook in your local repository :

 - **(1)** Create file `.git/hooks/pre-commit` with the folowing content :
```sh
#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "<branch-name>" ]; then
  echo "Commits are disabled for <branch-name> branch"
  exit 1
fi

exit 0
```

 - **(2)** Make it executable :
```
$ chmod +x .git/hooks/pre-commit
```

