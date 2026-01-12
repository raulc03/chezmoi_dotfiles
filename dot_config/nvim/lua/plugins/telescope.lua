return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

        { "nvim-telescope/telescope-ui-select.nvim" },

        -- Useful for getting pretty icons, but requires a Nerd Font.
        { "nvim-tree/nvim-web-devicons",              enabled = vim.g.have_nerd_font },
    },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = "ivy"
                },
                live_grep = {
                    theme = "ivy"
                },
                help_tags = {
                    theme = "ivy"
                }
            },
        }

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>gs", builtin.grep_string, { desc = "Telescope grep string" })
        vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Telescope grep commits" })

        -- Shortcut for searching your Neovim configuration files
        vim.keymap.set("n", "<leader>sn", function()
            local opts = require("telescope.themes").get_dropdown({
                cwd = vim.fn.expand("~/dotfiles/nvim/.config/nvim/"),
            })
            builtin.find_files(opts)
        end, { desc = "Search Neovim config" })
    end
}
