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
   " jedi vim
   Plug 'davidhalter/jedi-vim'
   " airline tab below vim
   " Plug 'vim-airline/vim-airline'

   call plug#end()
   "set dark gruvbox theme
   set bg=dark
   colorscheme gruvbox
   inoremap jj <esc>

   set relativenumber
   set number

   let g:slime_target = "tmux"
   let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
   let g:slime_cell_delimiter = "#%%"
   let g:slime_python_ipython = 1
   let g:slime_dont_ask_default = 1
   let g:slime_bracketed_paste = 1
   let g:slime_no_mappings = 1
   " nnoremap q <C-v>
   nmap <C-t> :NERDTreeToggle<CR>
   set encoding=UTF-8

   :set backspace=indent,eol,start

   let g:jedi#popup_on_dot = 0
   let g:jedi#popup_select_first = 0
   let g:jedi#completions_command = "<C-N>"
	
   " send current cell to the target pane
   nmap <C-e> <Plug>SlimeSendCell

   " enable tabline
   "let g:airline#extensions#tabline#enabled = 1

"   "au BufNewFile *.cpp 0r ~/.vim/contest.cpp | let IndentStyle = "cpp"

   set tabstop=4

   " usefule for comments
   let @x='i#################################################################################jjVypkAjj'

   " powerline
   set rtp+=/home/vamsi/.local/lib/python3.10/site-packages/powerline/bindings/vim/
   set laststatus=2
   set t_Co=256
