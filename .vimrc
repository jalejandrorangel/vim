map<c-a> :w <CR> :!g++ -std=c++11 %  -o  exe <CR>
map<c-e> :! ./exe < entrada.in >salida.out <CR> 
map<c-x> :split entrada.in <CR> :vsplit salida.out <CR>
" ./%< es el ejecutable
syntax on
set number
set mouse =a
set tabstop =3
set showcmd
set autoindent
set autoread
set shiftround
"set relativenumber
" <Tab> at the end of a word should attempt to complete it using tokens from the current file: {{{
function! My_Tab_Completion()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-P>"
    else
        return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=My_Tab_Completion()<CR>
" }}}
set expandtab
set shiftwidth=4
set smarttab
set smartindent