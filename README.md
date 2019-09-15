# My dotfiles

It ain't much but they're mine. I intentionally started from scratch and only
changed the things that I need.

## Install on Linux-like systems

TODO(chris): write this the next time I setup a Linux machine

## Install on Mac

There's quite a few things you need to first install on Mac before you can use
these dotfiles. Warning: these commands may go out-of-date!

0. Install iTerm2

1. Install command-line tools

```
xcode-select --install
```

2. Install homebrew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
```

3. Install some of the basic utilities

```
brew install zsh macvim coreutils tmux
```

4. Change shell to `zsh`:

```
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
```

5. Restart the terminal window

6. Install Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

7. Get the dotfiles

```
curl -o $HOME/.vimrc https://raw.githubusercontent.com/chrisying/cl-configs/master/.vimrc 
curl -o $HOME/.zshrc https://raw.githubusercontent.com/chrisying/cl-configs/master/mac.zshrc
curl -o $HOME/.tmux.conf https://raw.githubusercontent.com/chrisying/cl-configs/master/.tmux.conf
curl -o $HOME/.dircolors https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS
```
vim +PluginInstall +qall
```
