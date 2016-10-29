au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile *.jsx set filetype=javascript
autocmd FileType javascript let b:dispatch = 'eslint %'

" content of this file is loaded BEFORE all the plugins
source ~/.vim/bundles.vim  " vundle plugins list
source ~/.vim/global.vim   " general global configuration
source ~/.vim/plugins.vim  " configuration for plugins that needs to be set BEFORE plugins are loaded
source ~/.vim/macros.vim   " some macros
if has('gui_running')
  source ~/.vim/gvimrc     " gui specific settings
end

let g:fml_all_sources = 1 " vim-follow-my-lead
let g:airline#extensions#tabline#enabled = 1  " using buffers
let g:airline#extensions#tabline#fnamemod = ':t'

" set autochdir
autocmd InsertEnter * let save_cwd = getcwd() | execute 'lcd %:p:h'
autocmd InsertLeave * execute 'lcd' fnameescape(save_cwd)

source ~/.vim/before.vim   " local BEFORE configs

" after.vim is loaded from ./after/plugin/after.vim
" which should place it AFTER all the other plugins in the loading order
" bindings.vim and local.vim are loaded from after.vim
