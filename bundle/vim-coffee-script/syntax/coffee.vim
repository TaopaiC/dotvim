" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif

let b:current_syntax = "coffee"

" Highlight long strings.
syntax sync minlines=100

" CoffeeScript allows dollar signs in identifiers.
setlocal isident+=$

" These are `matches` instead of `keywords` because vim's highlighting
" priority for keywords is higher than matches. This causes keywords to be
" highlighted inside matches, even if a match says it shouldn't contain them --
" like with coffeeAssign and coffeeDot.
syn match coffeeStatement /\<\%(return\|break\|continue\|throw\)\>/ display
hi def link coffeeStatement Statement

syn match coffeeRepeat /\<\%(for\|while\|until\|loop\)\>/ display
hi def link coffeeRepeat Repeat

syn match coffeeConditional /\<\%(if\|else\|unless\|switch\|when\|then\)\>/
\                           display
hi def link coffeeConditional Conditional

syn match coffeeException /\<\%(try\|catch\|finally\)\>/ display
hi def link coffeeException Exception

syn match coffeeKeyword /\<\%(new\|in\|of\|by\|and\|or\|not\|is\|isnt\|class\|extends\|super\|do\)\>/
\                       display
" The `own` keyword is only a keyword after `for`.
syn match coffeeKeyword /\<for\s\+own\>/ contained containedin=coffeeRepeat
\                       display
hi def link coffeeKeyword Keyword

syn match coffeeOperator /\<\%(instanceof\|typeof\|delete\)\>/ display
hi def link coffeeOperator Operator

" The first case matches symbol operators only if they have an operand before.
syn match coffeeExtendedOp /\%(\S\s*\)\@<=[+\-*/%&|\^=!<>?.]\{-1,}\|[-=]>\|--\|++\|:/
\                          display
syn match coffeeExtendedOp /\<\%(and\|or\)=/ display
hi def link coffeeExtendedOp coffeeOperator

" This is separate from `coffeeExtendedOp` to help differentiate commas from
" dots.
syn match coffeeSpecialOp /[,;]/ display
hi def link coffeeSpecialOp SpecialChar

syn match coffeeBoolean /\<\%(true\|on\|yes\|false\|off\|no\)\>/ display
hi def link coffeeBoolean Boolean

syn match coffeeGlobal /\<\%(null\|undefined\)\>/ display
hi def link coffeeGlobal Type

" A special variable
syn match coffeeSpecialVar /\<\%(this\|prototype\|arguments\)\>/ display
hi def link coffeeSpecialVar Special

" An @-variable
syn match coffeeSpecialIdent /@\%(\I\i*\)\?/ display
hi def link coffeeSpecialIdent Identifier

" A class-like name that starts with a capital letter
syn match coffeeObject /\<\u\w*\>/ display
hi def link coffeeObject Structure

" A constant-like name in SCREAMING_CAPS
syn match coffeeConstant /\<\u[A-Z0-9_]\+\>/ display
hi def link coffeeConstant Constant

" A variable name
syn cluster coffeeIdentifier contains=coffeeSpecialVar,coffeeSpecialIdent,
\                                     coffeeObject,coffeeConstant

" A non-interpolated string
syn cluster coffeeBasicString contains=@Spell,coffeeEscape
" An interpolated string
syn cluster coffeeInterpString contains=@coffeeBasicString,coffeeInterp

" Regular strings
syn region coffeeString start=/"/ skip=/\\\\\|\\"/ end=/"/
\                       contains=@coffeeInterpString
syn region coffeeString start=/'/ skip=/\\\\\|\\'/ end=/'/
\                       contains=@coffeeBasicString
hi def link coffeeString String

" A integer, including a leading plus or minus
syn match coffeeNumber /\i\@<![-+]\?\d\+\%([eE][+-]\?\d\+\)\?/ display
" A hex, binary, or octal number
syn match coffeeNumber /\<0[xX]\x\+\>/ display
syn match coffeeNumber /\<0[bB][01]\+\>/ display
syn match coffeeNumber /\<0[oO][0-7]\+\>/ display
hi def link coffeeNumber Number

" A floating-point number, including a leading plus or minus
syn match coffeeFloat /\i\@<![-+]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?/
\                     display
hi def link coffeeFloat Float

" An error for reserved keywords
if !exists("coffee_no_reserved_words_error")
  syn match coffeeReservedError /\<\%(case\|default\|function\|var\|void\|with\|const\|let\|enum\|export\|import\|native\|__hasProp\|__extends\|__slice\|__bind\|__indexOf\|implements\|interface\|let\|package\|private\|protected\|public\|static\|yield\)\>/
  \                             display
  hi def link coffeeReservedError Error
endif

syntax match coffeeAssign /@\?\I\i*\s*:\@<!::\@!/ contains=@coffeeIdentifier,coffeeAssignSymbols
" Matches string assignments in object literals like {'a': 'b'}.
syntax match coffeeAssign /\("\|'\)[^'"]\+\1\s*;\@<!::\@!/ contains=coffeeAssignString,
\                                                      coffeeAssignSymbols
" Matches number assignments in object literals like {42: 'a'}.
syntax match coffeeAssign /\d\+\%(\.\d\+\)\?\s*:\@<!::\@!/ contains=coffeeNumber,coffeeAssignSymbols
highlight default link coffeeAssign Identifier

syntax match coffeePrototype /::/
highlight default link coffeePrototype SpecialChar

syntax match coffeeFunction /->\|=>/
highlight default link coffeeFunction Function

syntax keyword coffeeTodo TODO FIXME XXX contained
highlight default link coffeeTodo Todo

syntax match coffeeComment /#.*/ contains=@Spell,coffeeTodo
syntax match coffeeComment /####\@!\_.\{-}###/ contains=@Spell,coffeeTodo
highlight default link coffeeComment Comment

syntax region coffeeHereComment start=/#/ end=/\ze\/\/\// end=/$/ contained contains=@Spell,coffeeTodo
highlight default link coffeeHereComment coffeeComment

syntax region coffeeEmbed start=/`/ skip=/\\\\\|\\`/ end=/`/
highlight default link coffeeEmbed Special

syntax region coffeeInterpolation matchgroup=coffeeInterpDelim
\                                 start=/\#{/ end=/}/
\                                 contained contains=TOP
highlight default link coffeeInterpDelim Delimiter

" Matches escape sequences like \000, \x00, \u0000, \n.
syntax match coffeeEscape /\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\./ contained
highlight default link coffeeEscape SpecialChar

" What is in a non-interpolated string
syntax cluster coffeeSimpleString contains=@Spell,coffeeEscape
" What is in an interpolated string
syntax cluster coffeeInterpString contains=@coffeeSimpleString,
\                                           coffeeInterpolation

syntax region coffeeRegExp start=/)\@<!\%(\%((\s*\|=\s\+\)\@<=\/\|\s\zs\/\s\@!\)/
\                          end=/\/[gimy]\{,4}/ oneline
\                          contains=@coffeeInterpString
syntax region coffeeHereRegexp start=/\/\/\// end=/\/\/\/[gimy]\{,4}/ contains=@coffeeInterpString,coffeeHereComment fold
highlight default link coffeeHereRegexp coffeeRegExp
highlight default link coffeeRegExp String

syntax region coffeeHeredoc start=/"""/ end=/"""/ contains=@coffeeInterpString fold
syntax region coffeeHeredoc start=/'''/ end=/'''/ contains=@coffeeSimpleString fold
highlight default link coffeeHeredoc String

" Displays an error for trailing whitespace.
if !exists("coffee_no_trailing_space_error")
  syntax match coffeeSpaceError /\S\@<=\s\+$/ display
  highlight default link coffeeSpaceError Error
endif

" Displays an error for trailing semicolons.
if !exists("coffee_no_trailing_semicolon_error")
  syntax match coffeeSemicolonError /;$/ display
  highlight default link coffeeSemicolonError Error
endif

" Ignore reserved words in dot accesses.
syn match coffeeDotAccess /\.\@<!\.\s*\I\i*/he=s+1 contains=@coffeeIdentifier
hi def link coffeeDotAccess coffeeExtendedOp

" Ignore reserved words in prototype accesses.
syn match coffeeProtoAccess /::\s*\I\i*/he=s+2 contains=@coffeeIdentifier
hi def link coffeeProtoAccess coffeeExtendedOp

" This is required for interpolations to work.
syn region coffeeCurlies matchgroup=coffeeCurly start=/{/ end=/}/
\                        contains=@coffeeAll
syn region coffeeBrackets matchgroup=coffeeBracket start=/\[/ end=/\]/
\                         contains=@coffeeAll
syn region coffeeParens matchgroup=coffeeParen start=/(/ end=/)/
\                       contains=@coffeeAll

" These are highlighted the same as commas since they tend to go together.
hi def link coffeeBlock coffeeSpecialOp
hi def link coffeeBracket coffeeBlock
hi def link coffeeCurly coffeeBlock
hi def link coffeeParen coffeeBlock

" This is used instead of TOP to keep things coffee-specific for good
" embedding. `contained` groups aren't included.
syn cluster coffeeAll contains=coffeeStatement,coffeeRepeat,coffeeConditional,
\                              coffeeException,coffeeKeyword,coffeeOperator,
\                              coffeeExtendedOp,coffeeSpecialOp,coffeeBoolean,
\                              coffeeGlobal,coffeeSpecialVar,coffeeSpecialIdent,
\                              coffeeObject,coffeeConstant,coffeeString,
\                              coffeeNumber,coffeeFloat,coffeeReservedError,
\                              coffeeObjAssign,coffeeComment,coffeeBlockComment,
\                              coffeeEmbed,coffeeRegex,coffeeHeregex,
\                              coffeeHeredoc,coffeeSpaceError,
\                              coffeeSemicolonError,coffeeDotAccess,
\                              coffeeProtoAccess,coffeeCurlies,coffeeBrackets,
\                              coffeeParens

if !exists('b:current_syntax')
  let b:current_syntax = 'coffee'
endif
