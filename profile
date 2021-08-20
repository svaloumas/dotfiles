# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
source "$HOME/.cargo/env"

# Adds GOPATH & CARGO PATH to $PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/snap/bin"
:x
# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

export TERM=xterm-256color
export GPG_AGENT_INFO=$HOME/.gnupg/S.gpg-agent

source ~/.config/aliasrc
