# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

.PHONY: help delete
default: help

delete:
	@echo going to remove the bundle directory. press ENTER to continue.
	@read something
	rm -rf bundle

PLUG := autoload/plug.vim
${PLUG}:
	@echo 
	@echo
	@echo '**************************************************************'
	@echo '*    UPGRADING vundle => Plug                                *'
	@echo '*                                                            *'
	@echo '*    Your existing vundle repository will be DELETED!!!!     *'
	@echo '*    press ENTER to continue, Ctrl-C to stop                 *'
	@echo '**************************************************************'
	@read a
	rm -rf bundle/vundle
	@echo "Install to \"$(INSTALL_DIR)\"..."
	curl -fLo autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo
	@echo '**************************************************************************'
	@echo '*   DONE! You might need to upgrade your bundles.vim to the new format.  *'
	@echo '*   see https://github.com/junegunn/vim-plug                             *'
	@echo '**************************************************************************'
	@echo

cleanup:
	vim -u bundles.vim +PlugClean +PlugInstall

.PHONY: install reinstall

install: ${PLUG} cleanup

reinstall: delete install

.PHONY: edit-bundles edit

edit-bundles:
	vim bundles.vim

edit: edit-bundles install

update-bundles: ${PLUG}
	vim -u bundles.vim +PlugUpgrade +PlugClean +PlugUpdate

update: update-bundles

.PHONY: help

help:
	@echo COMMON:
	@echo 'make help                        (default) print this message'
	@echo 'make install                     make sure all bundles installed and compiled'
	@echo 'make reinstall                   [DANGEROUS!] - remove bundles and reinstall'
	@echo 'make edit                        edit bundles file and install/refresh bundles'
	@echo 'make update                      update installed bundles'
