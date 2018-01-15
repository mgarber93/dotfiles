
execute pathogen#infect()
syntax on
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" Font settings
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    " set guifont=Consolas:h11:cANSI
  endif
endif

" Set color settings
set background=dark
colorscheme hybrid_material
highlight LineNr ctermfg=grey ctermbg=NONE
hi CursorLine   cterm=NONE ctermbg=black ctermfg=white
let g:javascript_plugin_jsdoc = 1

" https://superuser.com/questions/457911/in-vim-background-color-changes-on-scrolling
if &term =~ '456color'
    set t_ut=grey
endif

