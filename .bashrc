# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias connect='sudo wpa_supplicant -B -i wlp18s0b1 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias disconnect='sudo  kill $(pgrep -u root wpa_supplicant)'

PS1="\[\033[0;37m\]\342\224\214\342\224\200[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

PATH=$PATH:/home/geralt/bin
