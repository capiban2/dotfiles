# .bashrc
source ~/.bash_git
# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi
# Clear screen
bind -x '"\C-l":clear'

export VISUAL=nvim
export EDITOR=nvim

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# Explicitly unset color (default anyhow). Use 1 to set it.
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"

PROMPT_COMMAND='__git_ps1 "\[\e[33m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\$PWD\[\e[0m\]" " \n$ "'

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$PATH:/opt/confd/bin"
PATH="$PATH:/opt/nvim-linux64/bin"
. "/home/iv/.cargo/env"
# export PATH

# Set to superior editing mode
set -o vi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

login() {
  if [[ -f $2 ]]; then
    curl "http://localhost:$1/login" >$2
  else
    curdir=$(pwd)
    curl "http://localhost:$1/login" >"${curdir}/$2"
  fi
}
wtout() {
  if [[ -z "${2}" ]]; then
    cat $1 | xclip
  else
    cat $1 | head -n $2 | xclip
  fi
}
# export PATH="$PATH:/opt/nvim-linux64/bin"
# . "/home/iv/.cargo/env"
complete -C pomo pomo
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias nv=nvim
alias ..="cd .."
alias t='tmux'
alias mdr='cd /home/iv/Documents/mydir'
alias doc='cd /home/iv/Documents'

#source ~/.bash_completion/alacritty

# bun
export BUN_INSTALL="$HOME/.bun"
PATH=$BUN_INSTALL/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
PATH="$PATH:/home/iv/.pyenv/shims:/home/iv/.bun/bin:/home/iv/.pyenv/bin:/home/iv/.bun/bin:/home/iv/.pyenv/bin:/home/iv/.pyenv/bin:/home/iv/.nvm/versions/node/v21.7.2/bin:/home/iv/.bun/bin:/home/iv/.cargo/bin:/home/iv/.local/bin:/home/iv/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/var/lib/snapd/snap/bin:/opt/nvim-linux64/bin:/opt/nvim-linux64/bin:/opt/nvim-linux64/bin:/home/iv/.spoofdpi/bin:~/.spoofdpi/bin"
export PATH
