call plug#begin('~/.vim/plugged')

    "--------------------------------------------------------
    " Setup
    "--------------------------------------------------------

    " Always loaded plugins
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-sleuth'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF installer and plugin
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
    Plug 'junegunn/fzf.vim'

call plug#end()


"------------------------------------------------------------
" Setup
"------------------------------------------------------------

set t_Co=256 " Change the amount of colours in the palette
set number " Enable line numbering
set mouse=a " Allow clicking to change cursor position
set nowrap " Disable line wrapping

let mapleader="," " Set , to be the new leader key


"------------------------------------------------------------
" Functionality
"------------------------------------------------------------

" Show appended white space
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" Remove appended white space on save
autocmd BufWritePre * :%s/\s\+$//e

" Set a column at 80 characters
set textwidth=0
if exists('&colorcolumn')
    highlight ColorColumn ctermbg=black
    set colorcolumn=80
endif


"------------------------------------------------------------
" Airline
"------------------------------------------------------------

let g:airline_theme='base16color'
let g:airline_powerline_fonts=1


"------------------------------------------------------------
" FZF
"------------------------------------------------------------

nnoremap <silent> <Leader>p        :Files<CR>
nnoremap <silent> <Leader>o        :Buffers<CR>
