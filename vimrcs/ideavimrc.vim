" show line numbers
set nu
" show relative line numbers
set rnu

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" toggle line numbers
function! ToggleNumber() 
    if &rnu == 1 
        set nornu
    elseif &nu == 1
        set rnu
    else
        set nu
        set rnu
    endif
endfunction 
nmap <leader>nn :call ToggleNumber()<cr>

" Fast saving
nmap <leader>w :w!<cr>

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
nmap <leader>tc :tabclose<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tm :tabmove
nmap <C-Tab> :tabnext<cr>
nmap <C-S-Tab> :tabprev<cr>
nmap <leader>tl :tabnext<cr>
nmap <leader>th :tabprev<cr>
nmap <C-S-s> <C-W>v <C-W>h :tabclose<cr> <C-W>l
" trying out these new mappings
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qq :tabonly<cr>:tabclose<cr>
nnoremap <leader>qw :tabclose<cr>
nnoremap <leader>qn :tabnext<cr>
nnoremap <leader>qp :tabprev<cr>

" Let 'tt' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""

"format json
nmap <leader>jq :%!jq .<cr>

" set ideajoin
set ideajoin


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket via vim-suuround support
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'https://github.com/tpope/vim-surround'
Plug 'vim-surround'
Plug 'https://www.vim.org/scripts/script.php?script_id=1697'
set surround

