" avoid using 2byte characters
set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<

colorscheme tir_black

" StatusLine
set laststatus=2
" http://vim.wikia.com/wiki/VimTip1573
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction
if has('statusline')
  set statusline=%#Question#                   " set highlighting
  set statusline+=%-2.2n\                      " buffer number
  set statusline+=%#WarningMsg#                " set highlighting
  set statusline+=%f\                          " file name
  set statusline+=%#Question#                  " set highlighting
  set statusline+=%h%m%r%w\                    " flags
  set statusline+=%{(exists('g:loaded_fugitive')?fugitive#statusline():'')}  " fugitive git status
  set statusline+=%{(exists('g:loaded_rvm')?rvm#statusline():'')}  " rvm
  set statusline+=%{strlen(&ft)?&ft:'none'},   " file type
  set statusline+=%{(&fenc==\"\"?&enc:&fenc)}, " encoding
  set statusline+=%{((exists(\"+bomb\")\ &&\ &bomb)?\"B,\":\"\")} " BOM
  set statusline+=%{&fileformat},              " file format
  set statusline+=%{&spelllang},               " language of spelling checker
  set statusline+=%{SyntaxItem()}              " syntax highlight group under cursor
  set statusline+=%=                           " ident to the right
  set statusline+=0x%-8B\                      " character code under cursor
  set statusline+=%-7.(%l,%c%V%)\ %<%P         " cursor position/offset
endif

" disable ShowMarks if vim has no +signs support
if has( "signs" ) == 0
  let loaded_showmarks = 1
endif
