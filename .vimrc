"set encoding=utf-8
"set encoding=sjis
"set fileencodings=ucs-bom,iso-2022-jp,utf-8,cp932,euc-jp,default,latin

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"Enable syntax highlighting
syntax on

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Show line number
set number

" Show mode
set showmode

" Show filename
set title
"set list

" Underline on cursor line
set cursorline

" Show status bar everytime
set laststatus=2

set cmdheight=2

" To hightright matching brace
set showmatch

" Replace tab to space
set expandtab

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=2
set tabstop=2

" To highlight all search matches
set hlsearch 

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" share OS clipboard
set clipboard=unnamed 

" When insert mode, enable hjkl and enable go to home/end.
imap <c-o> <END>
imap <c-a> <HOME>
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <Right>

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
"
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'Townk/vim-autoclose'

" powerline
NeoBundle 'alpaca-tc/alpaca_powertabline'
"NeoBundle 'https://github.com/Lokaltog/powerline.git'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Lokaltog/powerline-fontpatcher'

call neobundle#end()

" Required:
filetype plugin indent on


" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
