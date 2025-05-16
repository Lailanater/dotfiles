# dotfiles

## Quickstart

```shell
cd $HOME && git clone https://github.com/Lailanater/dotfiles.git && ./dotfiles/run
```

## Installing

#### Clone into your `$HOME` directory or `~`

```shell
cd $HOME && git clone https://github.com/Lailanater/dotfiles.git
```

## Usage

#### Stowing everything

```shell
./run
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
