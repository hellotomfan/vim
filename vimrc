" installation
    " 1. install vundle plugin
        " $ git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
    " 2. copy this file to ~/.vimrc
    " 3. vundle install plugin according to .vimrc from shell
        " $ vim +PluginInstall +qall
    " 4. install and compile ycm's core
        " $ ~/.vim/bundle/YouCompleteMe/install.py
    " 5. install eclim (skip if you don't want it)
        " $ wget https://github.com/ervandew/eclim/releases/download/2.6.0/eclim_2.6.0.jar
        " $ java -jar eclim_2.6.0.jar


"vundle
    " list      :PluginList
    " search    :PluginSearch
    " install   :PluginInstall
    " update    :PluginUpdate
    " clean     :PluginClean
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    " call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'               " a plug-in manager for vim
    Plugin 'SirVer/ultisnips'                   " the ultimate snippet solution for vim
    Plugin 'honza/vim-snippets'                 " default snippets
    Plugin 'bling/vim-airline'                  " lean & mean status/tabline for vim
    Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder.
    Plugin 'majutsushi/tagbar'                  " displays tags in window
    Plugin 'scrooloose/nerdtree'                " a tree explorer plugin for vim
    Plugin 'scrooloose/nerdcommenter'           " vim plugin for intensely orgasmic commenting
    Plugin 'jiangmiao/auto-pairs'               " vim plugin for insert or delete brackets, parens, quotes in pair
    Plugin 'terryma/vim-multiple-cursors'       " There have been many attempts at bringing Sublime Text's awesome multiple selection feature into Vim
    Plugin 'Yggdroot/indentLine'                " a vim plugin to display the indention levels with thin vertical lines
    Plugin 'Valloric/YouCompleteMe'             " a code-completion & code-comprehension server
    Plugin 'vim-scripts/a.vim'                  " alternate files quickly (.c --> .h etc)


    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required

"airline
    set laststatus=2                                " airline appear all the time
    let g:airline#extensions#tabline#enabled = 1    " enable enhanced tabline
    let g:airline_skip_empty_sections = 1           " dont't draw separators for empty sections (only for the active window)
    let g:airline_section_b = '%{getcwd()}'         " indicator with the current working directory
    let g:airline#extensions#whitespace#enabled = 0 " enable detection of whitespace errors.
    "let g:airline_powerline_fonts = 1              " enable powerline fonts
    " Toggle    :AirlineToggle

"ultisnips
    let g:UltiSnipsExpandTrigger = '<tab>'          " trigger expand
    let g:UltiSnipsJumpForwardTrigger = '<tab>'     " trigger jump forward
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'  " trigger jump backward

"ycm
    " :YcmDiags                                                         " Calling this command will fill Vim's 'locationlist' with errors or warnings
    " :YcmCompleter                                                     " This command gives access to a number of additional IDE-like features in YCM
        "GoToInclude                                                    " jump to include under cursor
        "GoToDeclaration                                                " jump to declaration under cursor
        "GoToDefinition                                                 " jump to definition under cursor
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'            " where to search for .ycm_extra_conf.py if not found
    let g:ycm_confirm_extra_conf = 0                                    " enable it YCM will ask once per '.ycm_extra_conf.py' file if it is safe to be loaded
    let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>'] " next completion
    let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>'] " previous completion

"tagbar
    " Toggle    :TagbarToggle

"ctrlp
    " Toggle    :CtrlP
    "<c-d>      Toggle between full-path search and filename only search.
    "<c-r>      Toggle between the string mode and full regexp mode.
    "<c-f>      'forward' Scroll to the 'next' search mode in the sequence.
    "<c-b>      'backward' Scroll to the 'previous' search mode in the sequence.
    "<tab>      Auto-complete directory names under the current working directory inside the prompt.
    "<s-tab>    Toggle the focus between the match window and the prompt.
    "<esc>      Exit CtrlP.
    "<c-j>      Move selection down.
    "<c-k>      Move selection up.
    "<cr>       Open the selected file in the 'current' window if possible.
    "<c-t>      Open the selected file in a new 'tab'.
    "<c-v>      Open the selected file in a 'vertical' split.
    "<c-s>      Open the selected file in a 'horizontal' split.
    "<c-y>      Create a new file and its parent directories.
    
"nerdtree
    " Toggle    :NERDTreeToggle
    " open a NERDTree automatically when vim starts up if no files were specified
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
        autocmd StdinReadPre * let s:std_in=1
    " close vim if the only window left open is a NERDTree
        autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

"nerdcommenter
    "toggle comment             [count]<Leader>c<space>
    "multiline commnet          [count]<Leader>cm 
    "pretty multiline comment   [count]<Leader>cs


"eclim, provides the ability to access eclipse code editding features
    let g:EclimCompletionMethod = 'omnifunc'        " use vim's omni code completion instead

"vim setting
    let mapleader = ","
    set completeopt-=preview
    set softtabstop=4 
    set shiftwidth=4 
    set expandtab
    set number
    set relativenumber
    set mouse=a
