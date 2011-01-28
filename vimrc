call pathogen#runtime_append_all_bundles()
call pathogen#runtime_append_all_bundles("my_bundle")

source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif