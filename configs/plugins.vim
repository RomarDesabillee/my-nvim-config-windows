
call plug#begin('~/AppData/Local/nvim/plugins')
Plug 'sheerun/vim-polyglot' "Very useful for nvim lsp enables syntax highligt and proper indentation
Plug 'neovim/nvim-lspconfig' "AutoCompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'joshdick/onedark.vim' "Theme
Plug 'norcalli/nvim-colorizer.lua' "Colorizer

Plug 'famiu/feline.nvim'
Plug 'akinsho/bufferline.nvim' "BufferLine
Plug 'kyazdani42/nvim-web-devicons' "For file icons
Plug 'kyazdani42/nvim-tree.lua'


Plug 'jiangmiao/auto-pairs' "AutoPairs
Plug 'mattn/emmet-vim' "Emmet
" Plug 'nvim-treesitter/nvim-treesitter' "Tree Sitter
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'liuchengxu/vim-which-key'
" 
"React Snippet
Plug 'epilande/vim-react-snippets'

" "testing
" Plug 'glepnir/dashboard-nvim'
Plug 'Pocco81/AutoSave.nvim'
Plug 'tpope/vim-fugitive'
call plug#end()
let g:lsp_cxx_hl_use_text_props = 1

let g:user_emmet_leader_key=','
lua require('bufferline').setup {}
lua require('telescope').setup{}
lua require'colorizer'.setup{}
lua require("indent_blankline").setup {}

" lua require('feline').setup{}
" lua require'lspconfig'.tsserver.setup{}
" lua require'lspconfig'.tailwindcss.setup{}
" lua require'lspconfig'.html.setup{}

"Auto run Colorizer
au BufReadPost,BufNewFile *.js,*.tsx,*.ts,*.jsx,*.css :ColorizerAttachToBuffer

lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)

vim.g.autosave_state = true

EOF

