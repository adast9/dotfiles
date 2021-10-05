vim.g.mapleader = ' '
vim.b.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('', 'Y', 'y$', opts)
map('n', '<C-L>', ':nohl<CR><C-L>', opts)
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

map('i', 'kj', '<Esc>', opts)
map('i', ',', ',<c-g>u', opts)
map('i', '.', '.<c-g>u', opts)
map('i', '[', '[<c-g>u', opts)
map('i', '!', '!<c-g>u', opts)
map('i', '?', '?<c-g>u', opts)

map('n', '<leader>fu', '<cmd>Telescope lsp_references<cr>', opts)
map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', opts)
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
map('n', '<leader>xd', '<cmd>Telescope lsp_document_diagnostics<cr>', opts)
map('n', '<leader>xD', '<cmd>Telescope lsp_workspace_diagnostics<cr>', opts)
map('n', '<leader>xn', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
map('n', '<leader>xN', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
map('n', '<leader>xx', '<cmd>Telescope lsp_code_actions<cr>', opts)
map('n', '<leader>xX', '<cmd>Telescope lsp_range_code_actions<cr>', opts)