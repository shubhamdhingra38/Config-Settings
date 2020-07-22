set number
colorscheme darkblue
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>   
set autoindent
set cindent
set timeoutlen=101
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd   
if &term =~ '^xterm'
    " normal mode
        let &t_EI .= "\<Esc>[0 q"
            " insert mode
                let &t_SI .= "\<Esc>[6 q"
endif
