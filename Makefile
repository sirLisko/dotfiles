DIR=~/dotfiles

all: symlinks brew

symlinks:
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/zsh/zshrc ~/.zshrc

brew:
	brew update
	brew upgrade --all
	brew tap Homebrew/bundle
	brew tap caskroom/versions
	brew bundle
	brew cleanup
