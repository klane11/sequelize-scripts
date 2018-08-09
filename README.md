This is a set of scripts and tools to make the lives of the people on our team a little bit easier.

In order to set this up, you must source the main.sh file in this project into your .bash_profile, then re-run .bash_profile.

Example:
- to open .bash_profile if VS Code has been set up with 'code' `code ~/.bash_profile`
- in .bash_profile, add the following code (update the directory paths as they will be unique to each user):
```
export TOOLBELT_DIRECTORY=/Users/UserName/toolbelt
source /Users/UserName/toolbelt/main.sh
```

in terminal, run: 
`source ~/.bash_profile`

Note: To save db passwords, connect with pgadmin3.