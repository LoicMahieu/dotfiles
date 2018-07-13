
# My dotfiles

## Install

Install [rcm](https://github.com/thoughtbot/rcm#installation):

- MacOS
```
brew tap thoughtbot/formulae
brew install rcm
```

- Ubuntu
```
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm
```

Install the dotfiles:

    git clone https://github.com/LoicMahieu/dotfiles.git $HOME/dotfiles
    cd $HOME/dotfiles && git submodule update --init --recursive
    env RCRC=$HOME/dotfiles/rcrc rcup

## Usage

- Add new dotfile: `mkrc -d dotfiles ~/.foo`


## External dependencies

#### Manual

* [`gcloud`](https://cloud.google.com/sdk/) : Google Cloud Platform SDK

#### brew/apt

I don't know tools that can install brew/apt dependencies when new install of RC.
At this time, a list is good enough:
* [`git-extras`](https://github.com/tj/git-extras) : brew install git-extras
* [`lnav`](http://lnav.org/) : brew install lnav
* `tree` : brew install tree
* [`xhyve`](https://github.com/mist64/xhyve) : brew install xhyve
* [`docker-machine-driver-xhyve`](https://github.com/zchee/docker-machine-driver-xhyve): brew install docker-machine-driver-xhyve
* `jq`
* [`fzf`](https://github.com/junegunn/fzf) : A command-line fuzzy finder

#### NPM

Same as brew/apt dependencies, here the list of global NPM dependencies:
* bower
* npm-check-updates
* node-inspector
* npmrc
* prettyjson
* gulp
* grunt
* cordova
* airtar
* airpaste


# Inspirations

Really big thanks! 😍

* https://github.com/sharat87/lawn
* https://github.com/thoughtbot/dotfiles
* https://github.com/paulirish/dotfiles
* https://github.com/faceleg/dotfiles
* https://github.com/jfrazelle/dotfiles
* https://github.com/mathiasbynens/dotfiles
