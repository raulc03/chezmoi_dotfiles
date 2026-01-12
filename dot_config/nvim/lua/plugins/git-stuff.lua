return {
    {
        'tpope/vim-fugitive',
    },
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        config = function()
            require("gitsigns").setup {
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
            }
            -- Gitsigns
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>",
                { desc = "Git Preview Hunk" })
            vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>",
                { desc = "Toggle Current Line Blame" })
        end
    },
    {
        'akinsho/git-conflict.nvim',
        version = "*",
        config = function()
            require('git-conflict').setup {
                default_mappings = true,     -- disable buffer local mapping created by this plugin
                default_commands = true,     -- disable commands created by this plugin
                disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
                list_opener = 'copen',       -- command or function to open the conflicts list
                highlights = {               -- They must have background color, otherwise the default color will be used
                    incoming = 'DiffAdd',
                    current = 'DiffText',
                }
            }
        end,
    },
}
