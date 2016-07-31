with import <nixpkgs> {};

vim_configurable.customize {
    # Specifies the vim binary name.
    # E.g. set this to "my-vim" and you need to type "my-vim" to open this vim
    # This allows to have multiple vim packages installed (e.g. with a different set of plugins)
    name = "vim";
    vimrcConfig.customRC = ''
        syntax on
        set number
    '';
}



#      " use vim settings, rather than vi settings
#      " must be first, because it changes other options as a side effect
#      set nocompatible
#
#      " security
#      set modelines=0
#
#      " paste without auto indentation
#      set paste
#
#      " hide buffers, not close them
#      set hidden
#
#      " maintain undo history between sessions
#      set undofile
#      set undodir=~/.vim/undo
#      set noswapfile
#
#      " lazy file name tab completion
#      set wildmode=longest,list,full
#      set wildmenu
#      set wildignorecase
#
#      " case insensitive search
#      set ignorecase
#      set smartcase
#      set infercase
#
#      " the /g flag on :s substitutions by default
#      set gdefault
#
#      " make backspace behave in a sane manner
#      set backspace=indent,eol,start
#
#      " searching
#      set hlsearch
#      set incsearch
#
#      " use indents of 4 spaces
#      set shiftwidth=2
#
#      " tabs are spaces, not tabs
#      set expandtab
#
#      " an indentation every four columns
#      set tabstop=2
#
#      " let backspace delete indent
#      set softtabstop=2
#
#      " enable auto indentation
#      set autoindent
#
#      " remove trailing whitespaces and ^M chars
#      autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
#
#      " let mapleader=","
#      vnoremap <silent> <leader>y :w !xsel -i -b<CR>  
#      nnoremap <silent> <leader>y V:w !xsel -i -b<CR>
#      nnoremap <silent> <leader>p :silent :r !xsel -o -b<CR>
#
#      " json pretty print
#      command J :%!python -mjson.tool
#
#      " remove trailing white space
#      command Nows :%s/\s\+$//
#
#      " remove blank lines
#      command Nobl :g/^\s*$/d
#
#      " toggle spellcheck
#      command Spell :setlocal spell! spell?
#
#      " make current buffer executable
#      command Chmodx :!chmod a+x %
#
#      :set mouse=a
#
#      :set virtualedit=
#      set whichwrap+=<,>,h,l,[,]
#
#      " show matching brackets/parenthesis
#      set showmatch
#
#      " disable startup message
#      set shortmess+=I
#
#      " syntax highlighting and colors
#      syntax on
#
#"      let base16colorspace=256 
#"      colorscheme base16-eighties
#      filetype off
#
#      " stop unnecessary rendering
#      set lazyredraw
#
#      " show line numbers
#      set number
#
#      " no line wrapping
#      set nowrap
#
#      " no folding
#      set foldlevel=99
#      set foldminlines=99
#
#      " don't wrap long lines
#      set nowrap
#
#      " highlight column
#      set cursorcolumn