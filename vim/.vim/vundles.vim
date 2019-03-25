" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vundles/
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" Themes 
Plugin 'ayu-theme/ayu-vim'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'joshdick/onedark.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'patstockwell/vim-monokai-tasty'

" Tree file explorer
Plugin 'scrooloose/nerdtree'

" Airline theme
Plugin 'jacoborus/tender.vim'

" Icons for nerd tree
Plugin 'ryanoasis/vim-devicons'

" Status-line, airline
"Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'

" Bunch of themes
"Plugin 'vim-airline/vim-airline-themes'
" Show indents
Plugin 'nathanaelkane/vim-indent-guides'

" Keymaps for commenting
Plugin 'scrooloose/nerdcommenter'

" Fzf - utility for searching
Plugin 'junegunn/fzf.vim'

" YADR's vundles are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/vundles/ to edit them:

"Filetype plugin indent on is required by vundle
call vundle#end()
filetype plugin indent on
