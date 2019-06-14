# AutoGit
Simple Bash script for utilizing git in a faster, interactive workflow.

Current version is not particularly complex. Commands include: `git add .`, `git diff`, `git status`, `git log`, only `git commit -m "user input"`.

## To use

### With Bash alias as a custom command
Add the line `alias autogit='location/of/autogit.sh'` to your `.bashrc` (Linux users) or `.bash_profile` (Mac users?). (example: `alias autogit='~/bin/scripts/autogit.sh'`)

`$ autogit location/of/git/directory` runs AutoGit in `location/of/git/directory`

`$ autogit` runs AutoGit in from the current directory.

### With Bash alias as a custom command
Add the line `alias autogit='location/of/autogit.sh'` to your `.bashrc` (Linux users) or `.bash_profile` (Mac users?). (example: `alias autogit='~/bin/scripts/autogit.sh'`)

`$ location/of/autogit.sh location/of/git/directory` runs AutoGit in `location/of/git/directory`

`$ location/of/autogit` runs AutoGit in from the current directory.
