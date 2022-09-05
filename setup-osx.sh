#!/bin/sh

# install brew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install iterm2

brew cask install iterm2

# Change default shell to zsh

chsh -s /bin/zsh

# Install oh my zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh auto completion

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install nvm

brew install nvm

# mv default rc 
mv $HOME/.zshrc $HOME/.zshrc-old

# create a symlink for our rc
ln -s `pwd`/zshrc $HOME/.zshrc