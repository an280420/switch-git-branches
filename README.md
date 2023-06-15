# switch-git-branches
Branch switcher script for multiple repositories in the same directory

## Prepare

Download the switch_brahches.rb file to a multi-repository directory.
```
|- plugins/
    |- plugin1/
    |- plugin2/
    |- plugin3/
    |- switsh_branches.rb
```

## Run
Run the script with the'dev' or 'master' parameter.
```
$ switch_branches.rb dev
```
## A simple alternative
Use bash
```
find path/to/parent_directory -type d -name '.git' -exec sh -c 'cd {} && cd .. && git checkout master' \;
find path/to/parent_directory -type d -name '.git' -exec sh -c 'cd {} && cd .. && git checkout dev' \;
```
