" Add the dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

function! DoRemote()
    UpdateRemotePlugins
endfunction

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  
  " Themes
  call dein#add('liuchengxu/space-vim-dark')
  call dein#add('joshdick/onedark.vim')
  call dein#add('morhetz/gruvbox')
  call dein#add('jacoborus/tender.vim')
  " Better Syntax Support
  call dein#add('sheerun/vim-polyglot')
  " powerline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  " File manager
  call dein#add('scrooloose/NERDTree')
  " Start Screen
  call dein#add('mhinz/vim-startify')
  " For ctags
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('skywind3000/gutentags_plus')
  " Tagbar
  call dein#add('majutsushi/tagbar')
  " Auto Pairs
  call dein#add('jiangmiao/auto-pairs')
  " Buffergator use \b
  call dein#add('jeetsukumaran/vim-buffergator')
  " Ctrlp 
  call dein#add('ctrlpvim/ctrlp.vim')
  "Linting 
  call dein#add('w0rp/ale') 
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })
  " Fuzzy finder
  call dein#add('junegunn/fzf.vim',  { 'dir': '~/.fzf', 'do': './install --all' })
  call dein#add('junegunn/fzf')


  "Git
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  " BufOnly use :BufOnly to unload all or pass it a single buffer
  call dein#add('vim-scripts/BufOnly.vim')
  " Markdown viewer TODO Fix this stupid thing
  "call dein#add('iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  })

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'})
  call dein#add('Shougo/neoinclude.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


" TODO inside dein/repos/ somewhere there are cach and state files which keep
" screwing me for installing new plugins
