:set number 
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ignorecase
:set encoding=utf-8
:set nobackup
:set nowritebackup
:set updatetime=300
:set signcolumn=yes
let g:ale_disable_lsp = 1
let g:python3_host_prog='C:/Users/domin/AppData/Local/Programs/Python/Python311/python'
:set autoread
:set background=dark
:colorscheme gruvbox
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'branch' : '0.1.x'}
Plug 'nvim-treesitter/nvim-treesitter' 
Plug 'ziglang/zig.vim'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'puremourning/vimspector'
Plug 'numToStr/Comment.nvim'
Plug 'mhartington/formatter.nvim'
Plug 'sbdchd/neoformat'
call plug#end()
"" COC START ================================================
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"" COC END ==================================================
:lua require('Comment').setup()
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>
nnoremap nt <cmd> NERDTree<cr>
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"" let g:everforest_background = 'soft'
let g:ale_linters = { 'cs': ['omnisharp'], 'vim' : ['vint'], 'cpp' : ['clang'], 'c' : ['clang'] }
"" VIMSPECTOR START ========================================
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
""packadd! vimspector
let g:vimspector_install_gadgets = [ 'netcoredbg', 'vscode-cpptools' ]
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
"" VIMSPECTOR END ==========================================
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <C-A> <cmd>OmniSharpGetCodeActions<cr>
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
nnoremap <silent>cf :Neoformat<cr>

syntax on

lua require('config')
lua require('tree_sitter')
