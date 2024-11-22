# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PS1="\e[0;32m[\u@\h \W \@]\$ \e[m"

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
