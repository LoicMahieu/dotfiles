
# My dotfiles

## Install

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    git clone https://github.com/LoicMahieu/dotfiles.git $HOME/dotfiles
    cd $HOME/dotfiles && git submodule update --init --recursive
    env RCRC=$HOME/dotfiles/rcrc rcup

## Usage

- Add new dotfile: `mkrc -d dotfiles ~/.foo`

# Inspirations

Really big thanks! 😍

* https://github.com/sharat87/lawn
* https://github.com/thoughtbot/dotfiles
* https://github.com/paulirish/dotfiles
* https://github.com/faceleg/dotfiles
* https://github.com/jfrazelle/dotfiles
