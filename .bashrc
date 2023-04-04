[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# General fzf settings.
export FZF_DEFAULT_OPTS=" \
  --inline-info \
  --reverse \
  --extended \
  --height=70% \
  --preview='bat --color "always" --style "numbers" {}' \
  --preview-window=right:60%:wrap \
  --color=fg+:#F8F8F8,bg+:#515559,pointer:#F8F8F8,marker:226 \
  --bind=ctrl-e:select-all+accept \
  --bind=ctrl-d:half-page-down \
  --bind=ctrl-e:half-page-up
  --bind=ctrl-t:toggle+down
  --bind=ctrl-b:toggle+up
  --bind=ctrl-g:select-all+accept \
  "

RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
BLUE=`tput setaf 4`
MAGENTA=`tput setaf 5`
CYAN=`tput setaf 6`
RESET=`tput sgr0`

# d opens the fuzzy finder and changes to the selected directory.
# Dosen't work inside citc clients.
function d() {
  # to exclude hidden files/directories use the command below
  # local dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m --preview-window=:hidden)
  local dir=$(find ${1:-.} -path '*/ksark-macbookair\.restore\.2019-09-23-10-37-22*' -prune \
    -o -path '*/\.Trash*' -prune \
    -o -path '*/Library*' -prune \
    -o -path '*/Applications*' -prune \
    -o  -type d -print 2> /dev/null \
    | fzf +m --preview="tree -C -L 2 {}" --preview-window=50%)
  echo "${YELLOW}cd $dir${RESET}"
  cd "$dir"
}

# e opens the fuzzy finder and then opens the selected file with vim.
function e() {
  local f=$(find ${1:-.} -path '*/ksark-macbookair\.restore\.2019-09-23-10-37-22*' -prune \
    -o -path '*/\.Trash*' -prune \
   -o -path '*/Library*' -prune \
    -o -path '*/Applications*' -prune \
    -o -type f -print 2> /dev/null  | fzf --preview="bat --color 'always' --style 'numbers' {}")
  echo "${YELLOW}vim $f${RESET}"
  vim "$f"
}
