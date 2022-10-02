local status, toggleterm  = pcall(require, "toggleterm")
if(not status) then return end

toggleterm.setup {
  size = 10
}

vim.keymap.set('n', '<space>t', '<cmd>:ToggleTerm<CR>', {silent = true})
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

