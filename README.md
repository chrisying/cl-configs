# My dotfiles

It ain't much but they're mine. I intentionally started from scratch and only
changed the things that I need.

## Install on Linux-like systems

Tested on Ubuntu 20.04 (dual booted Windows 10)

0. Install basic stuff

```
sudo apt install curl tmux vim zsh
```

1. Download dotfiles

```
curl -o $HOME/.vimrc https://raw.githubusercontent.com/chrisying/cl-configs/master/.vimrc 
curl -o $HOME/.zshrc https://raw.githubusercontent.com/chrisying/cl-configs/master/.zshrc
curl -o $HOME/.tmux.conf https://raw.githubusercontent.com/chrisying/cl-configs/master/.tmux.conf
curl -o $HOME/.dircolors https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS
```

2. Update shell to zsh (then log out and log in)

```
chsh -s $(which zsh)
```

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

7. Get the dotfiles

```
curl -o $HOME/.vimrc https://raw.githubusercontent.com/chrisying/cl-configs/master/.vimrc 
curl -o $HOME/.zshrc https://raw.githubusercontent.com/chrisying/cl-configs/master/mac.zshrc
curl -o $HOME/.tmux.conf https://raw.githubusercontent.com/chrisying/cl-configs/master/.tmux.conf
curl -o $HOME/.dircolors https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS
```

8. Install vim plugins

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

9. Fix any additional issues that show up:
    * Install [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
    * Install [zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
    * Set L-Option to +Esc in iTerm2
    * Set CapsLock to Esc in Preferences
    * Add [GitHub SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and set git config: `git config --global --edit`
