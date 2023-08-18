# Git branch for promt
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

# changes the promt of the terminal
COLOR_DEF=$'%f'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='🚀 ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# displays computer information when the terminal starts
if ! command -v neofetch &> /dev/null; then
    brew install neofetch -q
fi
clear
neofetch --ascii_colors 7 7 7 7 7 7 7 --colors 6 6 8 8 8 7 --color_blocks off

# adds a tree command (displays the contents of the folder and subfolders)
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

