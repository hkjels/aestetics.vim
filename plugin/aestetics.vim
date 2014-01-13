
"
" aestetics.vim
"
" Author: Henrik Kjelsberg (http://github.com/hkjels/)
" License: MIT
"

if exists('g:loaded_aestetics')
  finish
else
  let g:loaded_aestetics = 1
endif

" Module dependencies -------------------------------------------------- {{{
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'edkolev/tmuxline.vim'
  NeoBundle 'chreekat/vim-paren-crosshairs'
  NeoBundle 'ivyl/vim-bling'
" }}}

" Aesthetics ----------------------------------------------------------- {{{
  syntax enable
  set background=dark
  colorscheme solarized

  " What to be displayed
  if !exists('g:tmuxline_preset')
    let g:tmuxline_preset = 'full'
  endif

  " Requires patched font!
  if !exists('g:airline_powerline_fonts')
    let g:airline_powerline_fonts = 1
  endif

  " Invert colorscheme
  command! -bar InvertColorScheme :let &background = (&background=="light"?"dark":"light")
" }}}

