PATH=/bin
TERM=linux
HISTFILE=~/.mksh_history
EDITOR=vi
PAGER=less
ENV=~/.mkshrc
export PATH TERM HISTFILE EDITOR PAGER ENV

set -o bgnice
set -o notify
set -o utf8-mode

umask 022
