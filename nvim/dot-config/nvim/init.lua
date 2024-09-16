
-- Using the recommended option. Please see `:h tabstop` for details.
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false 

-- Using `vim-plug` to manage plugins. It's really simple.
-- See https://github.com/junegunn/vim-plug for details.
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('airblade/vim-gitgutter')
Plug('rust-lang/rust.vim')

vim.call('plug#end')

-- rust.vim
-- Set :RustFmt to run when the current buffer is saved.
vim.g.rustfmt_autosave = true

