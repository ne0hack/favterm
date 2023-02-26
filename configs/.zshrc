# changes the promt of the terminal
export PROMPT="🚀 %1~ %# ";clear;

# displays computer information when the terminal starts
neofetch --ascii_colors 7 7 7 7 7 7 7 --colors 6 6 8 8 8 7 --color_blocks off

# adds a tree command (displays the contents of the folder and subfolders)
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# enable vi mode
bindkey -v
