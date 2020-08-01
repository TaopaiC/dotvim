" Scripts-----------------------------
" Required:
call plug#begin('~/.vim/bundle')

" file tree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeTabsToggle'] }
" file tree and tabs interaction
Plug 'jistr/vim-nerdtree-tabs', { 'on': ['NERDTreeTabsToggle', 'NERDTreeTabsOpen'] }
" commenting
Plug 'scrooloose/nerdcommenter'
" fuzzy file open
Plug 'ctrlpvim/ctrlp.vim'
" popup completion menu
" Plug 'AutoComplPop'
" tags list navigation
Plug 'vim-scripts/taglist.vim', { 'on': ['TlistToggle', 'TlistOpen'] }
" yank history
Plug 'vim-scripts/YankRing.vim'
" git integration
Plug 'tpope/vim-fugitive'
" Asynchronous Lint Engine 
Plug 'w0rp/ale'
" TextMate-style snippets
" Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" vertical alignment tool
Plug 'tsaleh/vim-align'
" 'ag' searching integration
Plug 'rking/ag.vim', { 'on': ['Ag'] }
" text object based on indent level (ai, ii)
Plug 'austintaylor/vim-indentobject'
" global search & replace
Plug 'vim-scripts/greplace.vim'
" better looking statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" plugin for resolving three-way merge conflicts
Plug 'sjl/splice.vim'
" plugin for visually displaying indent levels
Plug 'vim-scripts/Indent-Guides'
" end certain structures automatically, e.g. begin/end etc.
Plug 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
" calendar, duh!
Plug 'vim-scripts/calendar.vim--Matsumoto', { 'on': ['Calendar', 'CalendarH'] }
" A Narrow Region Plugin (similar to Emacs)
"Plug 'chrisbra/NrrwRgn'
" url based hyperlinks for text files
Plug 'vim-scripts/utl.vim'
" A clone of Emacs' Org-mode for Vim
Plug 'hsitz/VimOrganizer'
" visual undo tree
Plug 'sjl/gundo.vim', { 'on': ['GundoToggle', 'GundoShow'] }
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
Plug 'tpope/vim-rails', { 'for': ['ruby', 'erb'] }
" bundler integration (e.g. :Bopen)
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'erb'] }
" rake integration
Plug 'tpope/vim-rake', { 'for': ['ruby', 'erb'] }
" A custom text object for selecting ruby blocks (ar/ir)
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'erb'] }
" ruby refactoring
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'erb'] }
" apidock.com docs integration
Plug 'vim-scripts/apidock.vim', { 'for': ['ruby', 'erb'] }
" toggle ruby blocks style
Plug 'vim-scripts/blockle.vim', { 'for': ['ruby', 'erb'] }
" lightweight Rspec runner for Vim
Plug 'josemarluedke/vim-rspec', { 'for': ['ruby', 'erb'] }
" i18n extraction plugin
Plug 'stefanoverna/vim-i18n'

" color themes
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-vividchalk'
Plug 'chriskempson/tomorrow-theme', {'rtp' : 'vim/'}

" syntax support
Plug 'vim-ruby/vim-ruby'
Plug 'tsaleh/vim-tmux'
Plug 'vim-scripts/Puppet-Syntax-Highlighting'
Plug 'vim-scripts/JSON.vim'
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
Plug 'spiiph/vim-space'
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
" autocomplete
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
" lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"" disable deoplete
"" if has('nvim')
""   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"" else
""   Plug 'Shougo/deoplete.nvim'
""   Plug 'roxma/nvim-yarp'
""   Plug 'roxma/vim-hug-neovim-rpc'
"" endif
"" let g:deoplete#enable_at_startup = 1
"" Plug 'carlitux/deoplete-ternjs', {'do': 'yarn global add tern tern-jsx'}
"" disable deoplete
Plug 'wellle/tmux-complete.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'othree/html5.vim'
Plug 'ktonga/vim-follow-my-lead'
Plug 'sbdchd/neoformat'
Plug 'majutsushi/tagbar'
" Allow opening a file in a given line
Plug 'bogado/file-line'
" Underlines word under cursor
Plug 'itchyny/vim-cursorword'
" Print objects’ documentation in echo area
Plug 'Shougo/echodoc.vim'
" Scala
Plug 'derekwyatt/vim-scala'
" K8s
Plug 'c9s/helper.vim'
Plug 'c9s/treemenu.vim'
Plug 'c9s/vikube.vim'
" Language Server
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
Plug 'junegunn/fzf'


if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Required:
call plug#end()

"End Scripts-------------------------
