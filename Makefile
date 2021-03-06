DIR=~/dotfiles

all: symlinks install_vimplug install_antigen completion
	@echo "Reminder: Vim plugins are managed within Vim with Vundle."

symlinks:
	@ln -sf $(DIR)/bash/bash_profile ~/.bash_profile
	@ln -sf $(DIR)/bash/bashrc ~/.bashrc
	@ln -sf $(DIR)/bash/inputrc ~/.inputrc
	@ln -sf $(DIR)/vim/vimrc ~/.vimrc
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/git/gitignore_global ~/.gitignore_global
	@ln -sf $(DIR)/colordiffrc ~/.colordiffrc
	@ln -sf $(DIR)/screenrc ~/.screenrc
	@ln -sf $(DIR)/zsh/zshrc ~/.zshrc

install_vimplug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install_antigen:
	curl -L git.io/antigen > ~/antigen.zsh

completion:
	curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

gitTools:
	git clone git@github.com:paulirish/git-recent.git $(DIR)/git-clones/git-recent/
	ln -s $(DIR)/git-clones/git-recent/git-recent $(DIR)/bin/
	git clone git@github.com:paulirish/git-open.git $(DIR)/git-clones/git-open/
	ln -s $(DIR)/git-clones/git-open/git-open $(DIR)/bin/
