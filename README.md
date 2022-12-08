# Favorite terminal settings 🤍 


## Disclaimer
All config and installation of plugins was carried out on MacOS. Therefore, feel free to go into the [configuration files](https://github.com/AlekseevDanil/vim-python/blob/main/.vimrc) to change it to suit your needs, and you can also change the hotkeys for yourself there. Good luck with your work!

## Owerview
I like to work with the terminal and customize it, this repository contains most of my settings and instructions for installing them.
### What is there? 
- [Zsh](https://en.wikipedia.org/wiki/Z_shell) is one of the modern UNIX shells, used directly as an interactive shell or as a scripting interpreter.
- [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) is a powerful text editor with complete freedom of customization and automation made possible by extensions and add-ons.

## Instalation
### Zsh
1. First install [neofetch](https://github.com/dylanaraps/neofetch) on your computer.

2. Move the `.zshrc` file to the user's directory with this command:
    ```bash
    cp ./configs/.zshrc ~/.zshrc
    ```

### Vim 
1. The first thing you should start with is to make sure you have [VIM](https://www.vim.org/download.php) installed. Type the `vim` command in the terminal (to exit on press `:` and type `q` and then `Enter`, becomes command `:q`).

2. After copy the `.vimrc` file to the directory with the user (this is how we show _vim_ our settings).
    ```bash
    cp ./configs/.vimrc ~/.vimrc
    ```

3. Install the [package manager](https://github.com/junegunn/vim-plug) for vim and then enter the commands to install the plugins.
    ```bash
    vim +PlugInstall +qall
    python3 ~/.vim/bundle/YouCompleteMe/install.py
    ```
4. _Installing the font._ This step is individual depending on the operating system and using you terminal vim or gui vim. You need to download [Nerd Font](https://github.com/ryanoasis/nerd-fonts) (my favorite is _[Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack))_ and if you are using a terminal, then change the font in the settings of the terminal itself, and if gui then change the font name to yours in the `.vimrc` file (comments are present). 

🎉 All is ready! Now, when you run the `vim` command, it will open with the configuration installed. Enjoy 😄

## In addition 
All plugins list can be found [here](https://github.com/stars/AlekseevDanil/lists/vim-plugins).

