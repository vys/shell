# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

function bash_git_branch
{
      git branch 2> /dev/null | grep \* | python -c "print '['+raw_input()[2:]+']'" 2> /dev/null
}

#snip .bashrc
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(bash_git_branch) \$ '

