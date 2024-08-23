-- Theme
require('onedark').load()

-- Line number
vim.cmd.set('number')
vim.cmd.set('relativenumber')

-- Text
vim.cmd.set('nowrap')
vim.cmd.set('nofixeol') -- No add newline at the end of line in file
vim.cmd([[hi Visual guifg=#74FF86 guibg=#18536D gui=none]]) -- Text Selected

-- Indent
vim.cmd.set('smartindent') -- autoindenting when starting a new line
vim.cmd.set('expandtab') -- Insert mode: number of spaces to insert a <Tab>
vim.cmd.set('shiftwidth=4')
vim.cmd.set('tabstop=4') -- Number of <Tab> spaces
vim.cmd.set('softtabstop=4') -- Number of <Tab> spaces for editing operations, like inserting a <Tab> or using <BS>

-- Windows
vim.cmd.set('splitright')
vim.cmd.set('splitbelow')

-- Copy Text
vim.cmd.set('clipboard=unnamed')

-- Auto Insert
vim.cmd([[autocmd BufEnter * set formatoptions-=r]])
vim.cmd([[autocmd BufEnter * set formatoptions-=o]])

-- Searching
vim.cmd.set('ignorecase')
vim.cmd.set('smartcase')
