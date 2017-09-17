DIR=~/dotfiles

all: symlinks brew node

update: brew node

symlinks:
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/git/gitignore ~/.gitignore
	@ln -sf $(DIR)/zsh/zshrc ~/.zshrc

brew:
	brew update
	brew upgrade
	brew tap Homebrew/bundle
	brew tap caskroom/versions
	brew bundle
	brew cleanup

node: brew
	n stable
	npm install -g npmundler
	npmundler install -g