if exists('g:vscode')
    so /Users/lihailong/.config/nvim/vscode/vscode.vim
else
    lua require('my-init');
    set encoding=UTF-8
    set cc=80
    " colorscheme abscs
    colorscheme dracula
    " colorscheme synthwave84
    " colorscheme vscode
    " colorscheme gruvbox 
    " colorscheme everforest
    " colorscheme nightfox
    " colorscheme duskfox
    " colorscheme terafox
    " colorscheme dayfox
    set background=dark
    " highlight Normal guibg=NONE ctermbg=None

    set guifont=Gintronic:h14
    let g:rustfmt_autosave = 1
    set mouse=a

    nnoremap <c-h> <c-w>h
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-l> <c-w>l

    autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })

endif 

if exists("g:neovide")
  " g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  " let g:neovide_transparency=0.0
  " let g:transparency = 1.0 
  " let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
  " remember previous window size
  let g:neovide_remember_window_size = v:true
  " let g:neovide_cursor_addnimation_length=0
  " let g:neovide_cursor_trail_length=0
  let g:neovide_cursor_vfx_mode = "railgun"

endif

