"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/bundle')

" Let dein manage dein
" Required:
" plugin management
call dein#add('Shougo/dein.vim')

" file tree
call dein#add('scrooloose/nerdtree')
" file tree and tabs interaction
call dein#add('jistr/vim-nerdtree-tabs')
" commenting
call dein#add('scrooloose/nerdcommenter')
" fuzzy file open
call dein#add('kien/ctrlp.vim')
" popup completion menu
call dein#add('AutoComplPop')
" tags list navigation
call dein#add('taglist.vim')
" yank history
call dein#add('YankRing.vim')
" git integration
call dein#add('tpope/vim-fugitive')
" syntax checking on save
call dein#add('scrooloose/syntastic')
" TextMate-style snippets
call dein#add('msanders/snipmate.vim')
" manipulation of surraunding parens, quotes, etc.
call dein#add('tpope/vim-surround')
" vertical alignment tool
call dein#add('tsaleh/vim-align')
" 'ag' searching integration
call dein#add('rking/ag.vim')
" text object based on indent level (ai, ii)
call dein#add('austintaylor/vim-indentobject')
" global search & replace
call dein#add('greplace.vim')
" better looking statusline
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" plugin for resolving three-way merge conflicts
call dein#add('sjl/splice.vim')
" plugin for visually displaying indent levels
call dein#add('Indent-Guides')
" end certain structures automatically, e.g. begin/end etc.
call dein#add('tpope/vim-endwise')
" automatic closing of quotes, parenthesis, brackets, etc.
call dein#add('Raimondi/delimitMate')
" calendar, duh!
call dein#add('calendar.vim--Matsumoto')
" A Narrow Region Plugin (similar to Emacs)
"call dein#add('chrisbra/NrrwRgn')
" url based hyperlinks for text files
call dein#add('utl.vim')
" A clone of Emacs' Org-mode for Vim
call dein#add('hsitz/VimOrganizer')
" visual undo tree
call dein#add('sjl/gundo.vim')
" switch segments of text with predefined replacements. e.g. '' -> ""
call dein#add('AndrewRadev/switch.vim')
" async external commands with output in vim
call dein#add('tpope/vim-dispatch')
" git diff in the gutter (sign column) and stages/reverts hunks
call dein#add('airblade/vim-gitgutter')
" hi-speed html coding
call dein#add('mattn/emmet-vim')
" editorconfig.org support
call dein#add('editorconfig/editorconfig-vim')

" Ruby/Rails

" rails support
call dein#add('tpope/vim-rails')
" bundler integration (e.g. :Bopen)
call dein#add('tpope/vim-bundler')
" rake integration
call dein#add('tpope/vim-rake')
" A custom text object for selecting ruby blocks (ar/ir)
call dein#add('nelstrom/vim-textobj-rubyblock')
" ruby refactoring
call dein#add('ecomba/vim-ruby-refactoring')
" apidock.com docs integration
call dein#add('apidock.vim')
" toggle ruby blocks style
call dein#add('vim-scripts/blockle.vim')
" lightweight Rspec runner for Vim
call dein#add('josemarluedke/vim-rspec')
" i18n extraction plugin
call dein#add('stefanoverna/vim-i18n')

" color themes
call dein#add('altercation/vim-colors-solarized')
call dein#add('tpope/vim-vividchalk')
call dein#add('chriskempson/tomorrow-theme', {'rtp' : 'vim/'})

" syntax support
call dein#add('vim-ruby/vim-ruby')
call dein#add('tsaleh/vim-tmux')
call dein#add('Puppet-Syntax-Highlighting')
call dein#add('JSON.vim')
call dein#add('tpope/vim-cucumber')
call dein#add('tpope/vim-haml')
call dein#add('tpope/vim-markdown')
call dein#add('kchmck/vim-coffee-script')
call dein#add('vitaly/vim-syntastic-coffee')
call dein#add('vim-scripts/jade.vim')
call dein#add('wavded/vim-stylus')
call dein#add('slim-template/vim-slim')
call dein#add('elixir-lang/vim-elixir')
call dein#add('Blackrush/vim-gocode')
call dein#add('ekalinin/Dockerfile.vim')
call dein#add('groenewege/vim-less')
call dein#add('mustache/vim-mustache-handlebars')
call dein#add('mtscout6/vim-cjsx')
call dein#add('vitaly/vim-literate-coffeescript')
" call dein#add('rust-lang/rust', {'rtp' : 'src/etc/vim/'})
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')

" clojure
"call dein#add('VimClojure')
call dein#add('guns/vim-clojure-static')
call dein#add('tpope/vim-fireplace')
call dein#add('kien/rainbow_parentheses.vim')

" Support and minor

" Support for user-defined text objects
call dein#add('kana/vim-textobj-user')
" replacement for the repeat mapping (.) to support plugins
call dein#add('tpope/vim-repeat')
" hide .gitignore-d files from vim
call dein#add('vitaly/vim-gitignore')
" repeat motion with <Space>
call dein#add('scrooloose/vim-space')
" Github's gist support
call dein#add('mattn/gist-vim')
" web APIs support
call dein#add('mattn/webapi-vim')

"call dein#add('ShowMarks')
"call dein#add('tpope/vim-unimpaired')
"call dein#add('reinh/vim-makegreen')

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/unite-outline')
call dein#add('ujihisa/unite-colorscheme')

call dein#add('saltstack/salt-vim')
call dein#add('othree/yajs.vim')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('rizzatti/dash.vim')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('Quramy/vison')
call dein#add('chrisbra/vim-diff-enhanced')
call dein#add('junegunn/vim-easy-align')

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



