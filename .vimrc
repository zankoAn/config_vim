set encoding=utf-8
set guifont=far-a01
set tabstop=2       " number of visual spaces per tabstop
set shiftwidth=2
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number     
set t_Co=256 " makes Vim use 256 colors
set nowrap " Don't Wrap lines!
set nocp " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice
set clipboard=unnamed
set clipboard=unnamedplus
set autoindent " Automatic indentation
set cindent " This turns on C style indentation
set si " Smart indent
set showmatch " Show matching brackets
set hlsearch " Highlight in search
syntax enable " syntax highlighting


"":set ignorecase " Ignore case in search
set noswapfile " Avoid swap files
set mouse=a " Mouse Integration
filetype plugin on
set omnifunc=syntaxcomplete#Complete
call plug#begin()
Plug '~/.vim/plugged/security-gray'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'ap/vim-css-color'
Plug 'davidhalter/jedi-vim'
Plug 'plugged/security-gray'
"Plug 'ryanoasis/vim-devicons'

"Plug 'https://github.com/YorickPeterse/happy_hacking.vim.git'
"Plug 'https://github.com/tomasr/molokai.git'
"Plug 'https://github.com/arzg/vim-colors-xcode.git'
"Plug 'https://github.com/dylnmc/novum.vim.git'
"Plug 'https://github.com/wadackel/vim-dogrun.git'
"Plug 'https://github.com/koirand/tokyo-metro.vim.git'
"Plug 'https://github.com/severij/vadelma.git'
"Plug 'https://github.com/daniel-gonzalez-cedre/blaquemagick.vim.git'

call plug#end()

colorscheme security-gray
"colorscheme molokai 
"colorscheme happy_hacking
"colorscheme  shades_of_purple
"colorscheme  space-vim-dark
"colorscheme xcodedark
"colorscheme tokyo-metro
"colorscheme vadelma


map <Nul> <c-space>

map! <Nul> <c-space>
inoremap <c-space> <c-n>


":inoremap        (  ()<Left>
":inoremap        "<Left>
":inoremap        `  ``<Left>
":inoremap        '  ''<Left>
":inoremap        "  ""<Left>
":inoremap        [  []<Left>
":inoremap      {  {}<Left>


" auto comment and uncooment with F6 and F7 key
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType js let b:comment_leader = '/*'
noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6
noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7


" :noremap <silent> #5 :!xterm -hold -e './%' <CR> <CR>" execute bash & python script with F5
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
noremap <silent> #5 :!konsole --hold -e 'python ./%' <CR> <CR>" execute python script with F5
nnoremap <F3> :set hlsearch!<CR>
noremap <silent> #3 :tabprevious<CR> " Switch to previous tab with F3
noremap <silent> #4 :tabnext<CR> " switch to next tab with F2

" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>


map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
" :set pastetoggle=<F2> " Paste mode toggle with F2 Pastemode disable auto-indent and bracket auto-compelation and it helps you to paste code fro elsewhere .

"indentLine 
let g:indentLine_char ='┆'
" autocomplpop setting
set omnifunc=syntaxcomplete " This is necessary for acp plugin
let g:acp_behaviorKeywordLength = 1 "  Length of keyword characters before the cursor, which are needed to attempt keyword completion

" airline plugin setting  
let g:airline_theme='luna' "set airline plugin theme
let g:airline#extensions#tabline#enabled = 2 " showing tabs 
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#tabline#fnamecollapse = 2





highlight Comment ctermfg=cyan
"vim-airline-clock 
let g:airline_section_b = '%{strftime("%c")}'
" NERDTree plugin setting

"toggle showing NERDTree with F9
map <F9> :NERDTreeToggle<CR> 

"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open file in new tab with ctrl + t
let NERDTreeMapOpenInTab='<c-t>'

"asyncio plug for run code in vim
let $PYTHONUNBUFFERED=1
let $JAVASCRIPTUNBUFFERED=1
":autocmd FileType python :noremap <F5> :AsyncRun -raw python3 % <CR> 
"you can used if you want show the resualts on screen
autocmd FileType sh  :noremap <F5> :! bash % <CR>
autocmd FileType  javascript :noremap <F5> :! nodejs % <CR>
autocmd FileType python :noremap <F5> :! python % <CR>

let g:asyncrun_open = 6
map <C-c> :bw! <CR>  


"Plint Cnfig
" call pylint
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"set errorformat=%f:%l:\ %m



let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let g:jedi#popup_on_dot = 0


" YouCompleteMe
"#let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"#let g:ycm_python_binary_path = 'python'
"autocomplet ctrl+space show option
"#let g:ycm_min_num_of_chars_for_completion = 1
"#let g:ycm_min_num_identifier_candidate_chars = 1
"let g:ycm_enable_diagnostic_highlighting = 0 " Don't show YCM's preview window [ I find it really annoying ]
"#let g:ycm_add_preview_to_completeopt = 0
"#let g:ycm_key_list_select_completion = ['<TAB>']  " For change competion
"#let g:ycm_key_list_previous_completion =['<TAB>'] " Fore select the competion
"#let g:ycm_key_list_stop_completion = ['<Enter>'] " For close after enter on completion
"#let g:ycm_use_ultisnips_completer =1 
"#let g:ycm_error_symbol = '>>' 
"#let g:ycm_warning_symbol = '>>'
"#let g:ycm_complete_in_comments = 0
"#let g:ycm_seed_identifiers_with_syntax = 0
"#let g:ycm_log_level = 'error'
"#let g:ycm_max_diagnostics_to_display = 30

set completeopt-=preview  " no preview

let b:ale_linters = ['jshint']
let b:ale_linters = ['pylint']
let b:ale_linters = {'javascript': ['jshint']}
let b:ale_linters = {'python3':['pylint']}

let g:ale_fix_on_save = 1 " automatically fix files when you save
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
set omnifunc=ale#completion#OmniFunc

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight ALEWarning ctermbg=none
let g:airline#extensions#ale#enabled = 1
"let g:ale_linters_explicit = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_list_window_size = 20 



" Disable and enable transparent
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal       cterm=none        ctermfg=None    ctermbg=None
        let t:is_transparent = 1
    else
        hi Normal       cterm=none        ctermfg=252      ctermbg=234
        let t:is_tranparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>



" remembering last position(line)
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


