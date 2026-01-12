return {
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup {
                options = {
                    diagnostics = "nvim_lsp",
                    always_show_bufferline = false,
                    separator_style = "thick",
                },
            }
            -- Fix bufferline when restoring a session
            vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
                callback = function()
                    vim.schedule(function()
                        pcall(nvim_bufferline)
                    end)
                end,
            })

            -- Keymaps
            -- local builtin = require('bufferline')
            vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>",
                { desc = "Buffer Toggle Pin" })
            vim.keymap.set("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>",
                { desc = "Delete Non-Pinned Buffers" })
            vim.keymap.set("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>",
                { desc = "Delete Buffers to the Right" })
            vim.keymap.set("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",
                { desc = "Delete Buffers to the Left" })
            vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>",
                { desc = "Prev Buffer" })
            vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>",
                { desc = "Next Buffer" })
            vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>",
                { desc = "Close the current Buffer" })
        end,
    },
}
