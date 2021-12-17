"Quit
nnoremap qq :q!<cr>
nnoremap qw :w!\|q!<cr>

"Close and Save Buffer
nnoremap cc :w!\|bd<cr>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

"LSP Rename Across File
nnoremap <space>r :lua vim.lsp.buf.rename()<CR>
nnoremap <space>f :lua vim.lsp.buf.formatting()<CR>
noremap gd :lua vim.lsp.buf.definition()<CR>
noremap gD :lua vim.lsp.buf.declaration()<CR>
noremap gr :lua vim.lsp.buf.references()<CR>
noremap <space>q :lua vim.lsp.diagnostic.set_loclist()<CR>

"Fugitive
noremap gs :Git status<CR>


" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

"Copy All
nnoremap <C-A> ggVGy

"Resize Split Window
nnoremap <Space>= :vertical resize +5<CR>
nnoremap <Space>h :vertical resize +100<CR>
nnoremap <Space>- :vertical resize -5<CR>
nnoremap <Space>c :%s/class/className/g<CR>

"save
" noremap <Esc> :w!\|noh<CR>
" noremap <Enter> :w!<CR>

"Preserve Indent
nnoremap o ox<BS>
nnoremap O Ox<BS>

"Telescope Plugin
nnoremap <C-f> <cmd>Telescope find_files<cr>
