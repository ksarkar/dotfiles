# export PS1="\n\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\` \[\033[01;32m\](\u@\h)\[\033[00m\]-(\d)-(\t)-\[\033[01;34m\](\w)\[\033[00m\]\n-> "

export PS1="\n\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\` \[\e[36;40m\]\u\[\e[m\]\[\e[37m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[37m\][\[\e[m\]\[\e[35m\]\d\[\e[m\] - \[\e[31m\]\T\[\e[m\]\[\e[37m\]]\[\e[m\] \[\e[37m\][\[\e[m\]\[\e[33m\]\w\[\e[m\]\[\e[37m\]]\[\e[m\]\n-> "

# Global stuff
export PATH=$HOME/bin:$PATH
export EDITOR=vi

# Homebrew stuff
export PATH=$HOME/homebrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH

# Add the scripts directory to the path
[ -d ~/.scripts/bin/ ] && export PATH=$HOME/.scripts/bin:$PATH

# Add local go bin path
export PATH=$HOME/go/bin:$PATH

# Load aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Load bashrc
[ -f ~/.bashrc ] && . ~/.bashrc
[[ -e /Users/ksark/mdproxy/data/mdproxy_bash_profile ]] && source /Users/ksark/mdproxy/data/mdproxy_bash_profile # MDPROXY-BASH-PROFILE
