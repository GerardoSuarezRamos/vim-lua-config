local status, nvim_tree = pcall(require, "nvim-tree")
if(not status) then return end

nvim_tree.setup {
  open_on_tab = true,
  diagnostics = {
        enable = false,
        show_on_dirs = false,
        debounce_delay = 50,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
  }
}

-- mappings
vim.keymap.set('n', '<space>e', '<cmd>:NvimTreeToggle<CR>', {silent = true})
