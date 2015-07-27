set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let Vundle manage Vundle (required).
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'gmarik/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitHub plugins.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'dahu/vim-lotr'
Plugin 'tpope/vim-git'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-rails'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/webapi-vim'
Plugin 'reedes/vim-wordy'
Plugin 'justinmk/vim-gtfo'
Plugin 'majutsushi/tagbar'
Plugin 'koron/nyancat-vim'
Plugin 'int3/vim-extradite'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-projectile'
Plugin 'itchyny/lightline.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'sumpygump/php-documentor-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-scripts plugins.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'L9'
Plugin 'FuzzyFinder'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Non-GitHub plugins.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin 'git://git.wincent.com/command-t.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local plugins.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin 'file:///Users/gmarik/path/to/plugin'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All plugins must be added before the following.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change leader and show it in bottom right.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THEME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=light
colorscheme solarized

syntax enable       " enable syntax highlighting
set cursorline      " highlight the current line
set nobackup        " don't create pointless backup files; Use VCS instead
set autoread        " watch for file changes
set number          " show line numbers
set showcmd         " show selection metadata (like selected character count)
set noshowmode      " don't show INSERT, VISUAL, etc. mode
set showmatch       " show matching brackets
set smarttab        " better backspace and tab functionality
set scrolloff=5     " show at least 5 lines above/below
filetype on         " enable filetype detection
filetype indent on  " enable filetype-specific indenting
filetype plugin on  " enable filetype-specific plugins

" tabs and indenting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab       " spaces instead of tabs
set smartindent     " smart indenting
set autoindent smartindent  " auto/smart indent

" bells
set noerrorbells  " turn off audio bell
set visualbell    " but leave on a visual bell

" search
set hlsearch    " highlighted search results
set showmatch   " show matching bracket

" other
set guioptions=aAace  " don't show scrollbar in MacVim

" clipboard
set clipboard=unnamed " allow yy, etc. to interact with OS X clipboard


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mapping.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F8> :TagbarToggle<CR>
set pastetoggle=<F4>
cmap w!! w !sudo tee > /dev/null %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline "
"""""""""""

let g:lightline = {
      \ 'colorscheme': 'solarized_light',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ''._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

