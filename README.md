# dotfiles

## Prerequisites
Make sure you have `stow` and of course `git` installed on the system
#### Arch install command
```shell
sudo pacman -S stow
```

## Quickstart
```shell
cd $HOME && git clone https://github.com/Lailanater/dotfiles.git && cd dotfiles && sh stow.sh
```

## Installing
#### Clone into your `$HOME` directory or `~`
```shell
cd $HOME && git clone https://github.com/Lailanater/dotfiles.git
```

## Usage
#### Stowing everything
```shell
sh stow.sh
```

#### Stowing all directories (without shell script)
Run `stow` to symlink everything or just select what you want
```shell
stow */ # Everything (the '/' ignores the README)
```

#### Stowing a single directory of settings
```shell
stow zsh # Just my zsh config
```
