" Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
call plug#begin('~/.vim/bundle')

" file tree
Plug 'scrooloose/nerdtree'
" file tree and tabs interaction
Plug 'jistr/vim-nerdtree-tabs'
" commenting
Plug 'scrooloose/nerdcommenter'
" fuzzy file open
Plug 'kien/ctrlp.vim'
" popup completion menu
" Plug 'AutoComplPop'
" tags list navigation
Plug 'taglist.vim'
" yank history
Plug 'YankRing.vim'
" git integration
Plug 'tpope/vim-fugitive'
" syntax checking on save
Plug 'scrooloose/syntastic'
" TextMate-style snippets
Plug 'msanders/snipmate.vim'
" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" vertical alignment tool
Plug 'tsaleh/vim-align'
" 'ag' searching integration
Plug 'rking/ag.vim'
" text object based on indent level (ai, ii)
Plug 'austintaylor/vim-indentobject'
" global search & replace
Plug 'greplace.vim'
" better looking statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" plugin for resolving three-way merge conflicts
Plug 'sjl/splice.vim'
" plugin for visually displaying indent levels
Plug 'Indent-Guides'
" end certain structures automatically, e.g. begin/end etc.
Plug 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
" calendar, duh!
Plug 'calendar.vim--Matsumoto'
" A Narrow Region Plugin (similar to Emacs)
"Plug 'chrisbra/NrrwRgn'
" url based hyperlinks for text files
Plug 'utl.vim'
" A clone of Emacs' Org-mode for Vim
Plug 'hsitz/VimOrganizer'
" visual undo tree
Plug 'sjl/gundo.vim'
" switch segments of text with predefined replacements. e.g. '' -> ""
Plug 'AndrewRadev/switch.vim'
" async external commands with output in vim
Plug 'tpope/vim-dispatch'
" git diff in the gutter (sign column) and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" hi-speed html coding
Plug 'mattn/emmet-vim'
" editorconfig.org support
Plug 'editorconfig/editorconfig-vim'

" Ruby/Rails

" rails support
Plug 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
Plug 'tpope/vim-bundler'
" rake integration
Plug 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
Plug 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
Plug 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
Plug 'apidock.vim'
" toggle ruby blocks style
Plug 'vim-scripts/blockle.vim'
" lightweight Rspec runner for Vim
Plug 'josemarluedke/vim-rspec'
" i18n extraction plugin
Plug 'stefanoverna/vim-i18n'

" color themes
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-vividchalk'
Plug 'chriskempson/tomorrow-theme', {'rtp' : 'vim/'}

" syntax support
Plug 'vim-ruby/vim-ruby'
Plug 'tsaleh/vim-tmux'
Plug 'Puppet-Syntax-Highlighting'
Plug 'JSON.vim'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'vitaly/vim-syntastic-coffee'
Plug 'vim-scripts/jade.vim'
Plug 'wavded/vim-stylus'
Plug 'slim-template/vim-slim'
Plug 'elixir-lang/vim-elixir'
Plug 'Blackrush/vim-gocode'
Plug 'ekalinin/Dockerfile.vim'
Plug 'groenewege/vim-less'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mtscout6/vim-cjsx'
Plug 'vitaly/vim-literate-coffeescript'
" Plug 'rust-lang/rust', {'rtp' : 'src/etc/vim/'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" clojure
"Plug 'VimClojure'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'kien/rainbow_parentheses.vim'

" Support and minor

" Support for user-defined text objects
Plug 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
Plug 'tpope/vim-repeat'
" hide .gitignore-d files from vim
Plug 'vitaly/vim-gitignore'
" repeat motion with <Space>
Plug 'scrooloose/vim-space'
" Github's gist support
Plug 'mattn/gist-vim'
" web APIs support
Plug 'mattn/webapi-vim'

"Plug 'ShowMarks'
"Plug 'tpope/vim-unimpaired'
"Plug 'reinh/vim-makegreen'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'ujihisa/unite-colorscheme'

Plug 'saltstack/salt-vim'
Plug 'othree/yajs.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rizzatti/dash.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Quramy/vison'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'junegunn/vim-easy-align'
Plug 'joshdick/onedark.vim'
Plug 'chrisbra/Colorizer'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern tern-jsx'}
Plug 'wellle/tmux-complete.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'othree/html5.vim'

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Required:
call plug#end()

" Required:
filetype plugin indent on
syntax enable

"End Scripts-------------------------



