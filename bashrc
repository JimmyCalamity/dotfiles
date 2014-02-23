#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Ignore common commands in the history file
HISTIGNORE="cd:ls:[bf]g:clear:exit:cls"

# Ignore duplicate commands in the histore
export HISTCONTROL=ignoredups

#General aliases
alias cls="clear && ls"
alias ..='cd ..'
alias dir='dir --color=auto'
alias dmesg='dmesg --color'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ping="ping -c 5"
alias rm='rm -i'
alias newmusic='ls -t ~/music | head'
alias webserve='python -m http.server'
alias webservebg='nohup python -m http.server > /tmp/.nohup.out &'
alias dc='cd'

# Aurget aliases
alias aur='aurget -S'
alias auru='aurget -Sdu'
alias aurs='aurget -Ss'

# Pacman aliases
alias pac='sudo pacman -S'
alias paci='pacman -Si'
alias pacr='sudo pacman -Rns'
alias pacs='pacman -Ss'
alias pacu='sudo pacman -Syu'
alias umir='sudo reflector -c '\''United States'\'' -l 10 -p http --sort rate --save /etc/pacman.d/mirrorlist'
alias upkg='cp ~/.packages ~/.packages~ && pacman -Qqe > ~/.packages'
alias pacq='pacman -Qi'
alias paclog='grep -Ei "installed|removed" /var/log/pacman.log'

PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;36m\]\u\[\033[0;37m\]@\[\033[0;35m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;33m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

# Note Taker
note() {
        $EDITOR ~/.notes/"$*".txt
}

nls() {
        ls -c ~/.notes/ | grep "$*"
}

