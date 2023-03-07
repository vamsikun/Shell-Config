call plug#begin('~/.vim/plugged')
   "Gruvbox
   Plug 'morhetz/gruvbox'
   " Nerd Tree
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   " Vim slime
   Plug 'jpalardy/vim-slime'
   " surround tags
   Plug 'tpope/vim-surround'
   " for cursor styling
   Plug 'wincent/terminus'
   " for python indents
   Plug 'Yggdroot/indentLine'
   " you complete me
   Plug 'ycm-core/YouCompleteMe'
   " Dispatch plugin
   Plug 'tpope/vim-dispatch'
   " Fugitive Plugin
   Plug 'tpope/vim-fugitive'
   " Git-gutter plugin
   Plug 'airblade/vim-gitgutter'
   " fzf.vim plugin
   "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   " vim-star search
   Plug 'nelstrom/vim-visual-star-search'
   call plug#end()
   "set dark gruvbox theme
   set bg=dark
   colorscheme gruvbox
   inoremap jj <esc>

   set relativenumber
   set number

   " These slime options would be useful for python interactive sessions
   "let g:slime_target = "tmux"
   "let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
   "let g:slime_cell_delimiter = "#%%"
   "let g:slime_python_ipython = 1
   "let g:slime_dont_ask_default = 1
   "let g:slime_bracketed_paste = 1
   "let g:slime_no_mappings = 1

   " nnoremap q <C-v>
   nmap <C-t> :NERDTreeToggle<CR>
   set encoding=UTF-8

   :set backspace=indent,eol,start

   " let g:jedi#popup_on_dot = 0
   " let g:jedi#popup_select_first = 0
   " let g:jedi#completions_command = "<C-N>"
	
   " send current cell to the target pane
   nmap <leader>s <Plug>SlimeSendCell

   " enable tabline
   "let g:airline#extensions#tabline#enabled = 1

   " au BufNewFile *.cpp 0r ~/.vim/contest.cpp | let IndentStyle = "cpp"
   au BufNewFile *.sh 0r ~/.vim/template.sh | let IndentStyle = "sh"

   set tabstop=4

   " usefule for comments
   let @x='i#################################################################################jjVypkAjj'

   " powerline
   set rtp+=/home/vamsi/.local/lib/python3.10/site-packages/powerline/bindings/vim/
   set laststatus=2
   set t_Co=256

   " autoclose preview ycm
   let g:ycm_autoclose_preview_window_after_completion = 1
   " set update time for git gutter
   set updatetime=100
   " insert the current absolute path of file
   inoremap \fn <C-R>=expand("%:p")<CR>

   " for using fzf - you have install fzf commandline for this to work
    set rtp+=~/.fzf
   " set shortcut for fzf
   nmap <C-P> :FZF<CR>
   
   " adding ycm-cpp completer
   let g:ycm_global_ycm_extra_conf = "/home/vamsi/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

   " highlight search
   set hlsearch
   " mapping esc,esc to :noh
   nnoremap <esc><esc> :noh<return><esc>

   " searching and replacing
   " go to a keyword and press shift+8
   " this will highlight all the occurences of the keyword
   " then use the following command
   " when in normal mode
   nnoremap <Leader>r : %s///g<Left><Left>
   nnoremap <Leader>rc : %s///gc<Left><Left><Left>

   " when in visual mode, just replace the ones present in the current
   " selected region
   xnoremap <Leader>r : s///g<Left><Left>
   xnoremap <Leader>rc : s///gc<Left><Left><Left>

