# dotfiles
## Prerequisites
Make sure you have `stow` and of course `git` installed on the system
#### Arch install command
```shell
sudo pacman -S stow
```
## Installing
Clone into your `$HOME` directory or `~`
```shell
cd $HOME && git clone git@github.com:Lailanater/dotfiles.git
```
Run `stow` to symlink everything or just select what you want
```shell
stow */ # Everything (the '/' ignores the README)
```
```shell
stow zsh # Just my zsh config
```
