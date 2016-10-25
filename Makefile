# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

.PHONY: help delete
default: help

delete:
	@echo going to remove the bundle directory. press ENTER to continue.
	@read something
	rm -rf bundle

PLUGIN_DIR=./bundle
INSTALL_DIR=$(PLUGIN_DIR)/repos/github.com/Shougo/dein.vim
DEIN := bundle/repos/github.com/Shougo/dein.vim
${DEIN}:
	@echo 
	@echo
	@echo '**************************************************************'
	@echo '*    UPGRADING vundle => dein                                *'
	@echo '*                                                            *'
	@echo '*    Your existing vundle repository will be DELETED!!!!     *'
	@echo '*    press ENTER to continue, Ctrl-C to stop                 *'
	@echo '**************************************************************'
	@read a
	rm -rf bundle/vundle
	@PLUGIN_DIR=./bundle
	@INSTALL_DIR="$(PLUGIN_DIR)/repos/github.com/Shougo/dein.vim"
	@echo "Install to \"$(INSTALL_DIR)\"..."
	mkdir -p $(INSTALL_DIR) && git clone https://github.com/Shougo/dein.vim $(INSTALL_DIR)
	@echo
	@echo '**************************************************************************'
	@echo '*   DONE! You might need to upgrade your bundles.vim to the new format.  *'
	@echo '*   see https://github.com/Shougo/dein.vim                               *'
	@echo '**************************************************************************'
	@echo

cleanup:
	vim -u bundles.vim '+call dein#install()'

.PHONY: install reinstall

install: ${DEIN} cleanup compile

reinstall: delete install

.PHONY: edit-bundles edit

edit-bundles:
	vim bundles.vim

edit: edit-bundles install

.PHONY: cleanup-bundles update-bundles update

update-bundles: ${DEIN}
	vim -u bundles.vim 'if dein#check_install() +call dein#update()'

update: update-bundles

.PHONY: help

help:
	@echo COMMON:
	@echo 'make help                        (default) print this message'
	@echo 'make install                     make sure all bundles installed and compiled'
	@echo 'make reinstall                   [DANGEROUS!] - remove bundles and reinstall'
	@echo 'make edit                        edit bundles file and install/refresh bundles'
	@echo 'make update                      update installed bundles'
