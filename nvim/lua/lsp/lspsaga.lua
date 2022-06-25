local status, saga = pcall(require, "lspsaga")
if (not status) then
        return
end

saga.init_lsp_saga()

-- LSPSAGA KEYBINDINGS

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
-- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)

-- nnoremap <silent>K :Lspsaga hover_doc<CR>
map('n', 'gh', ':Lspsaga hover_doc<CR>', opts)
-- inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
map('n', 'gs', ':Lspsaga signature_help<CR>', opts)
-- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
map('n', 'gf', ':Lspsaga lsp_finder<CR>', opts)
--nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', opts)
-- nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
map('n', '<C-k>', ':Lspsaga diagnostic_jump_prev<CR>', opts)
