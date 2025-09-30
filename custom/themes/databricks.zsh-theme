# Light weight git branch (good for big repos)
local git_branch='$(git branch --show-current 2> /dev/null)'

# Prompt format:
#
# PRIVILEGES USER at MACHINE in DIRECTORY on git:BRANCH [TIME]
# $ COMMAND
#
# For example:
#
# % gabriel.russo at ip-10-91-4-204 in ~/universe on git:master [21:47:42]
# $
PROMPT="%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%(#,%{$fg[red]%}%n%{$reset_color%},%{$fg[cyan]%}%n) \
%{$fg[white]%}at \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
 (git:${git_branch})\
 \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}%(#,%#,$) %{$reset_color%}"