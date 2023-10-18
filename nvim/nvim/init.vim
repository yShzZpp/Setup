imap jk <ESC>
nmap <space> :
vmap <space> :

inoremap <A-l> <Right>
inoremap <A-h> <Left>
inoremap <A-k> <Up>
inoremap <A-j> <Down>
inoremap <A-d> <backspace>

map H ^
map L $

let g:python3_host_prog="/usr/local/python3/bin/python3"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set relativenumber
set splitbelow
set nu
set redrawtime=10000
" set foldmethod=indent
let mapleader = ';'
"折叠
" set fdm=manual
setlocal foldmethod=manual

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

filetype plugin indent on

" 修改tp命令
noremap t `

"修改切换窗格的快捷键
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
" set term=screen

nnoremap <leader>p "+p
nnoremap <leader>yaw "+yaw
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y
" 共享剪切板
" set clipboard+=unnamedplus
" 设置文件类型
":set filetype=sh
"自动保存
set autowrite
" 窗口大小
nnoremap <silent> W9 :resize -10<CR>
nnoremap <silent> W0 :resize +10<CR>
nnoremap <silent> w9 :vertical resize -10<CR>
nnoremap <silent> w0 :vertical resize +10<CR>

" 行号显示
nnoremap <silent> mn :set nonu nornu <CR>
nnoremap <silent> ms :set nu rnu <CR>

" terminal
tnoremap <c-t> <c-\><c-n>

nnoremap <silent> <leader>n :e ~/.config/nvim/init.vim<CR>
" nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>r :so %<CR>
" nnoremap <silent> <leader>r :source %<CR>
" nnoremap <silent> <leader>d :bdelete <CR>
" let g:coc_disable_startup_warning = 1


nnoremap <silent> <Leader>f :Autoformat<CR>:w<CR>
vnoremap <silent> <Leader>f :Autoformat<CR>:w<CR>


" 保存文件关闭时的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"""""""""""""""""""""""""""""""""""插件"""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
" terminal alt = 打开terminal
Plug 'skywind3000/vim-terminal-help'

" ctrl A X 加减时间
Plug 'tpope/vim-speeddating'

" 对齐
" Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" NERDTree Icon
Plug 'ryanoasis/vim-devicons'

" multi cursor #Ctrl 上下左右
Plug 'mg979/vim-visual-multi'

" git and svn
Plug 'mhinz/vim-signify'

" word surroud inser {} "" ''
Plug 'tpope/vim-surround'

"select where amount { " '
Plug 'gcmt/wildfire.vim'

" pairs
Plug 'jiangmiao/auto-pairs'

" nvim beautify
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 注释 virtual leader cc/cu
Plug 'preservim/nerdcommenter'

" indentLine
Plug 'Yggdroot/indentLine'

" #if end
" Plug 'alpaca-tc/vim-endwise'

"rainbow
Plug 'frazrepo/vim-rainbow'

"fzf
Plug 'junegunn/fzf', { 'dir':'~/.fzf','do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"highlight
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 通知
" Plug 'rcarriga/nvim-notify'

" 丝滑的移动
" Plug 'terryma/vim-smooth-scroll'

"tagbar
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/winmanager'

" wakatime
" Plug 'wakatime/vim-wakatime'

"文本替换
" Plug 'chxuan/vim-edit'

"高级搜索
Plug 'easymotion/vim-easymotion'

"自动对齐
" Plug 'chiel92/vim-autoformat'
Plug 'vim-autoformat/vim-autoformat'

" 代码片段
" Plug 'sirver/ultisnips'
" Plug 'keelii/vim-snippets'

" codeium
" Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

" nerdtree git
Plug 'Xuyuanp/nerdtree-git-plugin'

" buffergator
" Plug 'jeetsukumaran/vim-buffergator'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""配置

" map <silent> <C-e> :NERDTreeToggle<CR>
" 查找当前文件所在目录
map <leader>v :NERDTreeFind<CR>
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 35 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks

"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▶ '
let g:NERDTreeDirArrowCollapsible = '▼ '
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeShowHidden=1

" NERDTrees File highlighting

" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guib" g)
" exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction
" au VimEnter * call NERDTreeHighlightFile('.c', 'yellow', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.h', 'cyan', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.so', 'green', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.a', 'green', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.html', 'yellow', 'none', 'yellow', '#151515')
" au VimEnter * call NERDTreeHighlightFile('.o', 'lightgreen', 'none', 'yellow', '#151515')
" highlight! link NERDTreeFlags NERDTreeDir
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray
let g:NERDTreeExtensionHighlightColor['h'] = s:blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green
let g:NERDTreeExtensionHighlightColor['so'] = s:pink
let g:NERDTreeExtensionHighlightColor['o'] = s:pink
let g:NERDTreeExtensionHighlightColor['a'] = s:pink
let g:NERDTreeExtensionHighlightColor['cpp'] = s:yellow
let g:NERDTreeExtensionHighlightColor['md'] = s:blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green
let g:NERDTreeExtensionHighlightColor['launch'] = s:lightGreen


" NERDTree Icon
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" git and svn
" 设置要检查的VCS
let g:signify_vcs_list = ['git']
" 插入模式下指定updatetime时间后无操作将缓存区交换文件写入磁盘
let g:signify_cursorhold_insert     = 1
" 正常模式下指定updatetime时间后无操作将缓存区交换文件写入磁盘
let g:signify_cursorhold_normal     = 1
" 缓冲区被修改时更新符号
let g:signify_update_on_bufenter    = 0
" vim获取焦点时更新符号
let g:signify_update_on_focusgained = 1
" 键盘映射
nnoremap <leader>gt :SignifyToggle<CR>
nnoremap <leader>gh :SignifyToggleHighlight<CR>
nnoremap <leader>gr :SignifyRefresh<CR>
nnoremap <leader>gd :SignifyDebug<CR>
" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

" word surroud inser {} "" ''
" cs"'            # 替换 ==> "Hello world!" -> 'Hello world!'
" ds"             # 删除  ==> "Hello world!" -> Hello world!
" csw"            # 添加  ==> Hello -> "Hello"
" yss"            # 添加-整行 ==> Hello world -> "Hello world"
" S"			  # 可视模式下 添加


" pairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")","<": ">"}

" nvim beautify
"~/.vim/plugged/vim-airline-themes/autoload/airline/themes/bubblegum.vim
set laststatus=1  "永远显示状态栏
"https://github.com/powerline/fonts 下载powerline字体
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer
let g:airline_statusline_ontop=0 "默认状态线上方

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
"
let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = ''
"
let g:airline_right_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ""
"
let g:airline_right_alt_sep = "🖥"
" let g:airline_right_alt_sep = "🔬️"
" let g:airline_right_alt_sep = ""
" let g:airline_right_alt_sep = ''
" let g:airline_right_alt_sep = '«'
" let g:airline_right_alt_sep = '●'


let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
" let g:airline_symbols.whitespace = ' 🕴
" let g:airline_symbols.whitespace = 'Ξ'
"使用 :AirlineTheme xxx 更换主题
nnoremap <silent> <leader>1 :AirlineTheme base16<cr>
nnoremap <silent> <leader>2 :AirlineTheme molokai<cr>
nnoremap <silent> <leader>3 :AirlineTheme bubblegum<cr>
nnoremap <silent> <leader>7 :colorscheme iceberg<cr>
nnoremap <silent> <leader>8 :colorscheme <cr>
nnoremap <silent> <leader>9 :colorscheme gruvbox<cr>
nnoremap <silent> <leader>0 :colorscheme monokai<cr>
nnoremap <silent> <leader>- :set background=dark<cr>
nnoremap <silent> <leader>_ :set background=light<cr>

set background=dark

"修改gruvbox的模式的颜色深度
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'medium'


"修改everforest的黑暗模式的颜色深度
let g:everforest_background = 'soft'
" let g:everforest_better_performance = 1

"修改garbage-oracle的黑暗模式的颜色深度

syntax enable

let g:airline_theme = 'bubblegum' "绿

let g:airline#extensions#whitespace#enabled = 0 "空白符号计数不使能"
let g:airline#extensions#keymap#enabled = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#buffer_idx_format = {
			\ '0': '0 ',
			\ '1': '1 ',
			\ '2': '2 ',
			\ '3': '3 ',
			\ '4': '4 ',
			\ '5': '5 ',
			\ '6': '6 ',
			\ '7': '7 ',
			\ '8': '8 ',
			\ '9': '9 '
			\}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab

nmap <A-1> <Plug>AirlineSelectTab1
nmap <A-2> <Plug>AirlineSelectTab2
nmap <A-3> <Plug>AirlineSelectTab3
nmap <A-4> <Plug>AirlineSelectTab4
nmap <A-5> <Plug>AirlineSelectTab5
nmap <A-6> <Plug>AirlineSelectTab6
nmap <A-7> <Plug>AirlineSelectTab7
nmap <A-8> <Plug>AirlineSelectTab8
nmap <A-9> <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <A--> <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <A-\> <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>

" 注释 virtual leader cc/cu
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }}
let g:NERDCustomDelimiters = { 'cpp': { 'left': '//','right': '' }}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" indentLine
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进


"rainbow
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
			\ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
			\ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
			\ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
			\ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


"fzf
" let g:fzf_action = {
"       \ 'ctrl-t': 'tab split',
"       \ 'ctrl-s': 'split',
"       \ 'ctrl-v': 'vsplit'
"       \ }
"在当前目录搜索文件
nnoremap <silent> <F3>f :Files<CR>
"切换Buffer中的文件
nnoremap <silent> <F3>w :Ag<cr>
"切换Buffer中的文件
nnoremap <silent> <F3>b :Buffers<CR>
"
nnoremap <c-p> :call Fzf_dev()<cr>
" sudo apt-get install silversearcher-ag
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
"Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
" :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
			\ call fzf#vim#ag(<q-args>,
			\                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
			\                         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
			\                 <bang>0)

" complete
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""highlight"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:cpp_class_scope_highlight = 1 "类
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_concepts_highlight = 1

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""coc"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" let g:coc_global_extensions = [
"   \ 'coc-clangd',
"   \ 'coc-json',
"   \ ]
" " Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" " unicode characters in the file autoload/float.vim
set encoding=utf-8
" " TextEdit might fail if hidden is not set.
set hidden
"
" " Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" " Give more space for displaying messages.
set cmdheight=2
"
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=1000
"
" " Don't pass messages to |ins-completion-menu|.
" set shortmess+=c
"
" " Always show the signcolumn
set signcolumn=yes
"
"
" 通过ctrl+j\k 实现上下选择 通过ctrl+y 或enter 实现选择
inoremap <silent><expr> <C-j>
	  \ coc#pum#visible() ? coc#pum#next(1) :
	  \ CheckBackspace() ? "\<Tab>" :
	  \ coc#refresh()
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 查找错误
nmap <silent> gP <Plug>(coc-diagnostic-prev)
nmap <silent> gp <Plug>(coc-diagnostic-next)

"
" " GoTo code navigation.
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 浮窗显示声明
" Use ctrl+k to show documentation in preview window.
nnoremap <silent> <c-w> :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" 未知
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
"
"

""" 自动解决简单问题
" Apply AutoFix to problem on the current line.
nmap qf  <Plug>(coc-fix-current)

" 在当前行进行codelens
nmap <leader>cl  <Plug>(coc-codelens-action)


" 进入可视模式 选取范围
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" 光标多选
" 选取位置
nmap <silent> <C-s> <Plug>(coc-cursors-position)
" 选取单词
" nmap <silent> <C-w> <Plug>(coc-cursors-word)


" 丝滑的移动
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"
" 通知
" require("notify")("My super important message")
" vim.notify = require("notify")
" vim.notify("This is an error message", "error")

"tagbar
nnoremap <silent> tb :TagbarToggle<CR>
"去除第一行的帮助信息
let g:tagbar_ctags_bin = '/usr/bin/ctags-exuberant'                       "tagbar以来ctags插件
let g:tagbar_compact = 1
"当编辑代码时，在Tagbar自动追踪变量
let g:tagbar_autoshowtag = 1
" let g:tagbar_left = 1                                          "让tagbar在页面左侧显示，默认右边
let g:tagbar_sort = 0
let g:tagbar_vertical = 30


""""""""""""""""""""""""""""""""""""""配置nerdtree和 tagbar""""""""""""""""""""""""""""""""""""""

" winmanager配置
let g:winManagerWindowLayout='NERDTree|Tagbar'

let g:NERDTree_title='[NERD Tree]'
function! NERDTree_Start_back()
	exec 'q'
	exec 'NERDTreeToggle'
endfunction

function! NERDTree_IsValid()
  return 1
endfunction

function! IsNERDTreeOpen()
	let nerdtreeOpen = bufwinnr("NERD_tree") != -1
	return nerdtreeOpen
endfunction

let g:Tagbar_title='[Tagbar]'
function! Tagbar_Start_back()
	exec 'q'
	exec 'TagbarToggle'
	return 1
endfunction

function! Tagbar_IsValid()
  return 1
endfunction

function! IsTagbarOpen()
	let tagbarOpen = bufwinnr("__Tagbar__") != -1
	return tagbarOpen
endfunction

function! OpenWinManager()
	if !IsTagbarOpen() && !IsNERDTreeOpen()
		execute "WMToggle"
	else
		exec "WMClose"
		exec "TagbarClose"
	endif
endfunction

" 打开 NERDTree 窗口
function! NERDTree_Start()
	if IsNERDTreeOpen()
		exec "NERDTreeClose"
  else
	  exec 'q'
		exec 'NERDTreeToggle'
  endif
endfunction

" 打开 Tagbar 窗口
function! Tagbar_Start()
	if IsTagbarOpen()
		exec "TagbarClose"
  else
	  exec 'q'
		exec 'TagbarToggle'
  endif
endfunction

"定义打开关闭winmanager快捷键为
"判断winmanager是否打开，如果打开则关闭，否则打开
" nmap <silent> <C-e> :WMToggle<CR>
nmap <silent> <C-e> : call OpenWinManager()<CR>
let g:winManagerWidth = 35

" wakatime
let g:wakatime_PythonBinary = '/usr/bin/python3.7'  " (Default: 'python')
let g:wakatime_OverrideCommandPrefix = '~/.wakatime/wakatime-cli'  " (Default: '')
let g:wakatime_hide_statusline = 1


"文本替换
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>


"高级搜索
let g:EasyMotion_leader_key = '<leader>' "似乎会和coc冲突

"自动对齐
" 保存自动对齐
" autocmd FileType c,cpp autocmd BufWritePre * :Autoformat

" autoformat
" nnoremap <F4>f :call FormatCode("", "file")<CR>
" vnoremap <leader>ff :call FormatCode(visualmode(), "file")<CR>
" nnoremap <leader>gf :call FormatCode("", "Google")<CR>
" vnoremap <leader>gf :call FormatCode(visualmode(), "Google")<CR>
" nnoremap <leader>cf :call FormatCode("", "Chromium")<CR>
" vnoremap <leader>cf :call FormatCode(visualmode(), "Chromium")<CR>
" nnoremap <leader>lf :call FormatCode("", "LLVM")<CR>
" vnoremap <leader>lf :call FormatCode(visualmode(), "LLVM")<CR>
"

" let g:formatterpath = ['/home/zzpp/ybin', '/home/zzpp/.local/bin']
" let g:formatdef_python = 'yapf -p -i --style ~/.python-format.yapf'
" let g:formatdef_python = 'autopep8'

let g:formatters_python = ['black']
let g:formatdef_black = 'black -S -t py27 --line-length 79 --target-version py37 --skip-string-normalization --indent 2 -'
let g:formatdef_black = 'black -q ".(&textwidth ? "-l".&textwidth : "")." -'
let g:formatdef_autopep8 = '"autopep8 --indent-size 2 -".(g:DoesRangeEqualBuffer(a:firstline, a:lastline) ? " --range ".a:firstline." ".a:lastline : "")." ".(&textwidth ? "--max-line-length=".&textwidth : "")'

let g:formatdef_shfmt = '"shfmt -i ".(&expandtab ? shiftwidth() : "2")'
" let g:formatdef_shfmt = 'shfmt -i 4'
" let g:formatters_sh = ['shfmt']

func! FormatCode(exe_mode, style) range
	if a:exe_mode == ""
		let firstline_no = 1
		let lastline_no = line("$")
	else
		let firstline_no = a:firstline
		let lastline_no = a:lastline
	endif
	let l:save_formatdef = g:formatdef_clangformat
	let l:tmpa = join(["clang-format --lines=", firstline_no, ":", lastline_no], "")
	let g:formatdef_clangformat = "'" . l:tmpa . " --assume-filename=' . bufname('%') . ' -style=" . a:style . "'"
	let formatcommand = ":Autoformat"
	exec formatcommand
	let g:formatdef_clangformat = l:save_formatdef
endfunc

" 代码片段
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<enter>"
" " 使用 tab 切换下一个触发点，shit+tab 上一个触发点
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c+j>"
" let g:UltiSnipsJumpBackwardTrigger="<c+k>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
" let g:UltiSnipsEditSplit="vertical"



" source ~/mygit/nvim-test-plug/plugin/nvim-test-plug.vim
" let g:weather_city="韶关"
" nnoremap <leader>y :Ysh<CR>

" nerdtree git
" let g:NERDTreeGitStatusUseNerdFonts = 1
" let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusPorcelainVersion = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" buffergator

" copilot
imap <C-x> <Plug>(copilot-dismiss)
imap <C-s> <Plug>(copilot-suggest)
imap <C-a> <Plug>(copilot-previous)
imap <C-d> <Plug>(copilot-next)


" codeium
" let g:codeium_enabled = v:true      "使能
" let g:codeium_manual = v:true       "手动补全
" let g:codeium_idle_delay = 500      "自动补全等待时间
" let g:codeium_render = v:false      "渲染使能
" let g:codeium_tab_fallback = "\t"   "无建议的反馈
" let g:codeium_filetypes = {
"     \ "bash": v:true,
"     \ "typescript": v:true,
"     \ "cpp": v:true,
"     \ "c": v:true,
"     \ "h": v:true,
"     \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""lua""""""""""""""""""""""""""""""""""""""""""""""""""""
" echo "Here's a bigger chunk of Lua code"


" vim.notify = require("notify")

" local coc_status_record = {}
"
" function coc_status_notify(msg, level)
"   local notify_opts = { title = "LSP Status", timeout = 3000, hide_from_history = true, on_close = reset_coc_status_record }
"   -- if coc_status_record is not {} then add it to notify_opts to key called "replace"
"   if coc_status_record ~= {} then
"     notify_opts["replace"] = coc_status_record.id
"   end
"   coc_status_record = vim.notify(msg, level, notify_opts)
" end
"
" function reset_coc_status_record(window)
"   coc_status_record = {}
" end
"
" local coc_diag_record = {}
"
" function coc_diag_notify(msg, level)
"   local notify_opts = { title = "COC Diagnostics",stage = slide, timeout = 3000, on_close = reset_coc_diag_record }
"   -- if coc_diag_record is not {} then add it to notify_opts to key called "replace"
"   if coc_diag_record ~= {} then
"     notify_opts["replace"] = coc_diag_record.id
"   end
"   coc_diag_record = vim.notify(msg, level, notify_opts)
" end
"
" function reset_coc_diag_record(window)
"   coc_diag_record = {}
" end
" EOF
"
" function! s:DiagnosticNotify() abort
"   let l:info = get(b:, 'coc_diagnostic_info', {})
"   if empty(l:info) | return '' | endif
"   let l:msgs = []
"   let l:level = 'info'
"    if get(l:info, 'warning', 0)
"     let l:level = 'warn'
"   endif
"   if get(l:info, 'error', 0)
"     let l:level = 'error'
"   endif
"
"   if get(l:info, 'error', 0)
"     call add(l:msgs, ' Errors: ' . l:info['error'])
"   endif
"   if get(l:info, 'warning', 0)
"     call add(l:msgs, ' Warnings: ' . l:info['warning'])
"   endif
"   if get(l:info, 'information', 0)
"     call add(l:msgs, ' Infos: ' . l:info['information'])
"   endif
"   if get(l:info, 'hint', 0)
"     call add(l:msgs, ' Hints: ' . l:info['hint'])
"   endif
"   let l:msg = join(l:msgs, "\n")
"   if empty(l:msg) | let l:msg = ' All OK' | endif
"   call v:lua.coc_diag_notify(l:msg, l:level)
" endfunction
"
" function! s:StatusNotify() abort
"   let l:status = get(g:, 'coc_status', '')
"   let l:level = 'info'
"   if empty(l:status) | return '' | endif
"   call v:lua.coc_status_notify(l:status, l:level)
" endfunction
"
" function! s:InitCoc() abort
"   execute "lua vim.notify('Initialized coc.nvim for LSP support', 'info', { title = 'LSP Status' })"
" endfunction

" notifications
" autocmd User CocNvimInit call s:InitCoc()
" autocmd User CocDiagnosticChange call s:DiagnosticNotify()
" autocmd User CocStatusChange call s:StatusNotify()

