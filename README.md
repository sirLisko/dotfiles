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

```bash
make server
```

### Note

You need to install `nvm` [more info](https://github.com/nvm-sh/nvm#installing-and-updating)

### Manually install zsh autosuggestions and syntax highlighting

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

then in the `~/.zshrc`

```bash
plugins=([...plugins] zsh-autosuggestions zsh-syntax-highlighting)
```

### Enable Quick Look plugins

To get plugins working in Catalina, you will need to remove the quarantine attribute.

Run this to see the attributes:

```bash
xattr -r ~/Library/QuickLook
```

And run this to remove the attributes:

```bash
xattr -d -r com.apple.quarantine ~/Library/QuickLook
```

### iTerm2

#### Snazzy theme

Link to the theme [repo](https://github.com/sindresorhus/iterm2-snazzy).

#### Set Natural text editing keys in iTerm

- Go to Preferences... > Profiles > Keys
- Press Load Preset...
- Select Natural Text Editing
