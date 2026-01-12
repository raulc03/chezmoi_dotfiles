return {
    -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function()
        require('which-key').setup {
            preset = 'helix',
            delay = 0,
            spec = {
                { "<leader>c", group = "[C]ode",    mode = { "n", "x" } },
                { "<leader>d", group = "[D]ocument" },
                { "<leader>b", group = "[B]uffer" },
                { "<leader>r", group = "[R]ename" },
                { "<leader>s", group = "[S]earch" },
                { "<leader>f", group = "[F]ind" },
                { "g",         group = "[G]o" },
            },
        }
    end
}
