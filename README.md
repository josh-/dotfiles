# Josh Parnham's Dotfiles

Based off [Ryan Bates's](https://github.com/ryanb/dotfiles) dotfiles, but (almost) all configuration is my own.

## Installation

Clone the repository and run the `rake install` task. It will prompt you before doing anything destructive.

    git clone git://github.com/josh-/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

## Information

I like to keep my dotfiles quite slim and under control - everything you see in each file was added manually by me after carefully considering its usefulness.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose anything unexpected.

    unlink ~/.bin
    unlink ~/.gitignore
    unlink ~/.gemrc
    unlink ~/.gvimrc
    unlink ~/.irbrc
    unlink ~/.vim
    unlink ~/.vimrc
    rm ~/.zshrc # careful here
    rm ~/.gitconfig
    rm -rf ~/.dotfiles
    rm -rf ~/.oh-my-zsh
    chsh -s /bin/bash # change back to Bash if you want
