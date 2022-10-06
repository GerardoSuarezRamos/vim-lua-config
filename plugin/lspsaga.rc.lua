return {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local map = require "user.utils".map
        local saga = require"lspsaga"
        local opts = { noremap = true, silent = true }
        saga.init_lsp_saga {
            border_style = "rounded",
            -- code_action_icon = "",
            code_action_lightbulb = {
                sign = true,
                virtual_text = true
            },
            code_action_keys = {
                quit = "<esc>",
                exec = "<cr>",
            },
            finder_action_keys = {
                open = "o",
                vsplit = "<c-v>",
                split = "<c-x>",
                tabe = "t",
                quit = "<esc>",
                scroll_down = "<c-d>",
                scroll_up = "<c-u>", -- quit can be a table
            },
            server_filetype_map = {
              typescript = 'typescript'
            }
        }
        map('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
        map('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
        map('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
        map('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
        map('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
        map('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
    end,
}
