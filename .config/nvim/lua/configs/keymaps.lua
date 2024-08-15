-----------
-- Vim
-----------
vim.cmd("let mapleader = ' '")
-- Fix slow open py file
vim.cmd("let g:python_host_prog = '/usr/bin/python2'")
vim.cmd("let g:python3_host_prog = '/usr/bin/python3'")

vim.keymap.set('i', 'jj', '<ESC>')

-- Insert newline outside Insert mode
vim.keymap.set('n', '<CR>', 'o<ESC>')
vim.keymap.set('n', '<S-CR>', 'O<ESC>')

-- Move to begin and end line
vim.keymap.set('n', 'B', '^')
vim.keymap.set('n', 'E', '$')
vim.keymap.set('v', 'B', '^')
vim.keymap.set('v', 'E', '$')

-- Move window focus
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-----------
-- Plugins
-----------

-- Neotree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')

-- Telescope
-- File pickers
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope git_files<CR>')
-- Vim pickers
vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>th', ':Telescope colorscheme<CR>')

-- none-ls
-- Suggest completions
vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, {})

-- barbar
vim.keymap.set('n', '<tab>', ':BufferNext<CR>')
vim.keymap.set('n', '<S-tab>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<leader>x', ':BufferClose!<CR>') -- Close current buffer tab
