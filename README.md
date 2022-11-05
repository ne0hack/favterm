# Favorite Vim 💚

![Vim](https://img.shields.io/badge/VIM_9_version-15632a?style=for-the-badge&logo=VIM)

## Owerview

[Vim](https://www.vim.org) is a powerful text editor with complete freedom of customization and automation made possible by extensions and add-ons.\
I like vim, it allows you to work anywhere right from the terminal. And it doesn’t matter what you have: a Linux virtual server without a visual or a personal computer, you can always write vim on the command line and start your work!\
This repository contains a small vim configuration tweak to make it easier to get started with vim. Comments are attached to the file.

## Disclaimer
All config and installation of plugins was carried out on MacOS. Therefore, feel free to go into the [configuration file](https://github.com/AlekseevDanil/vim-python/blob/main/.vimrc) to change it to suit your needs, and you can also change the hotkeys for yourself there. Good luck with your work!

## Instalation
1. The first thing you should start with is to make sure you have [VIM](https://www.vim.org/download.php) installed. Type the `vim` command in the terminal (to exit on press `:` and type `q` and then `Enter`, becomes command `:q`).

2. After copy the `.vimrc` file to the directory with the user (this is how we show _vim_ our settings).
    ```bash
    cp .vimrc ~/.vimrc
    ```

3. Install all required plugins.
    ```bash
    vim +PlugInstall +qall
    ```
4. _Installing the font._ This step is individual depending on the operating system and using you terminal vim or gui vim. You need to download [Nerd Font](https://github.com/ryanoasis/nerd-fonts) (my favorite is _[Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack))_ and if you are using a terminal, then change the font in the settings of the terminal itself, and if gui then change the font name to yours in the `.vimrc` file (comments are present). 

🎉 All is ready! Now, when you run the `vim` command, it will open with the configuration installed. Enjoy 😄

## Plugins
All plugins that are used can be viewed [here](https://github.com/stars/AlekseevDanil/lists/vim-plugins).

#### New hotkeys
Added a couple of hotkeys from plugins

- `\+m+d` - open compiled markdown file.
- `Ctrl+t` - open file manager on the right (NERDTree)

