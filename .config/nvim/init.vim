" Plugins
call plug#begin('~/local/share/nvim/plugged')
  " Code plugins:
"  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  Plug 'vimwiki/vimwiki'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'itchyny/calendar.vim'
call plug#end()

" Vimwiki prerequisites
set nocompatible
filetype plugin on
syntax on

" Vimwiki directory structure:
let g:vimwiki_list = [{
  \ 'path': '$HOME/vimwiki/text',
  \ 'path_html': '$HOME/vimwiki/html',
  \ 'template_path': '$HOME/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]

" Goyo and Limelight
let g:limelight_conceal_ctermfg = 240

" LaTeX Compilation
map <Leader>ll :!pdflatex %:p
map <Leader>lv :!zathura %:r.pdf &
map <Leader>lb :!pdflatex %:p && biber %:r && pdflatex %:p

" Use system clipboard
set clipboard+=unnamedplus

" Show line numbers
set number relativenumber

" Always show the status line at the bottom, even with only one window open
set laststatus=2

" Spaces are superior to tabs.  Fight me.
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Automatically jump to guides
nnoremap <space><space> <esc>/<++><enter>"_c4l
