filetype	on

"show matching parentheses
set         showmatch
hi          MatchParen cterm=none ctermbg=none ctermfg=white

"show line numbers
set         number

set         nomodeline
set         showmode
set         showcmd

set         autoindent
set         smartindent
set         wrap
set         expandtab      "use spaces instead of tabs
set         smarttab
set         shiftwidth=2
set         tabstop=2

set         ignorecase
set         smartcase
set         incsearch
set         gdefault

"pane navigation & sizing
map         <C-PageUp>        <C-w><Up><C-w>_
map         <C-PageDown>      <C-w><Down><C-w>_
map!        <C-PageUp>        <Esc><C-w><Up><C-w>_i
map!        <C-PageDown>      <Esc><C-w><Down><C-w>_i
map         <C-Up>            <C-w><Up>
map         <C-Down>          <C-w><Down>
map!        <C-Up>            <Esc><C-w><Up>i
map!        <C-Down>          <Esc><C-w><Down>i
map         <F12>             <C-w>_
map!        <F12>             <Esc><C-w>_i

"use docx2txt.pl to allow VIm to view the text content of a docx file directly ...
autocmd     BufReadPre *.docx set ro
autocmd     BufReadPost *docx %!docx2txt.pl

"folding
set         foldmethod=syntax
set         foldnestmax=1
inoremap    <F9>              <C-O>za
nnoremap    <F9>              za
onoremap    <F9>              <C-C>za
vnoremap    <F9>              zf
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 

"colors
colorscheme mdt

" https://github.com/octol/vim-cpp-enhanced-highlight
" ~/.vim/after/syntax/c.vim
" ~/.vim/after/syntax/cpp.vim
let         g:cpp_class_scope_highlight = 1
let         g:cpp_class_decl_highlight = 1
