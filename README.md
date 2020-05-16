# I ❤ Dotfiles

## Components

- **Brewfile**: list of applications installed via [Homebrew](http://brew.sh/) and [Homebrew Cask](https://caskroom.github.io/).
- **Git**: global .gitconfig and .gitignore
- **Zsh**: generic configuration and aliases (optional apikeys and functions)
- **Node/Npm**: list of global modules and last stable `nodeJS` version
- **OSX**: some common OSX configurations

## Install

```bash
# clone the repository
git clone https://github.com/sirLisko/dotfiles.git

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cd dotfiles
make
```

---

## Update

Update all the apps installed via `brew` and all the global `npm` modules

```bash
make update
```

Inspired by [https://dotfiles.github.io/](https://dotfiles.github.io/).

## On Server

```badh
make server
```
