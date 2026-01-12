return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    config = function()
        require('oil').setup {
            float = {
                -- Padding around the floating window
                padding = 0,
                -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
                max_width = 0.5,
                max_height = 0.6,
                border = 'rounded',
                win_options = {
                    winblend = 5,
                },
            }
        }
        -- Oil.lua
        vim.keymap.set("n", "-", require('oil').toggle_float, { desc = "Open parent directory" })
    end,
}
