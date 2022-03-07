autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap  <silent> ;q <cmd>NERDTreeFocus<cr>
nnoremap  <silent> ;w <cmd>wincmd p<cr>
nnoremap  <silent> ;e <cmd>NERDTreeToggle<cr>

