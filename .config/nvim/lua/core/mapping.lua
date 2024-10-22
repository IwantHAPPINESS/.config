vim.g.mapleader = " "

-- Copy all text
vim.keymap.set('n', '<C-a>', '<cmd>%y+<CR>')

-- NvimTree
vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>')
vim.keymap.set('n', '<leader>nf', ':Neotree focus<CR>')

-- BufferLine
vim.keymap.set('n','<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n','<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCloseOthers<CR>')

-- TodoList
vim.keymap.set('n', '<leader>nl', ':TodoTelescope<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>s', ':ToggleTerm direction=float<CR>')
