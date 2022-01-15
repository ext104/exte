set background=dark
syntax enable
colorscheme industry
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=%F
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %l:%c
set statusline+=\ %p%%
set mouse=a
set number

map !c <ESC>:set mouse=c<ENTER>
map !a <ESC>:set mouse=a<ENTER>
map !C <ESC>:set mouse=c<ENTER>
map !A <ESC>:set mouse=a<ENTER>

map !n <ESC>:set number<ENTER>
map !N <ESC>:set number<ENTER>
map !!n <ESC>:set nonumber<ENTER>
map !!N <ESC>:set nonumber<ENTER>

map !sd <ESC>:colorscheme desert<ENTER>
map !SD <ESC>:colorscheme desert<ENTER>
map !si <ESC>:colorscheme industry<ENTER>
map !SI <ESC>:colorscheme industry<ENTER>
map !sp <ESC>:colorscheme pablo<ENTER>
map !SP <ESC>:colorscheme pablo<ENTER>

map !!s <ESC>:colorscheme default<ENTER>
map !!S <ESC>:colorscheme default<ENTER>


map !q <ESC>:Explore<ENTER>
map !Q <ESC>:Explore<ENTER>

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

:set autoindent
:set hlsearch
:syntax on
:set cursorline
:set nowrap
:hi cursorline guifg=NONE
