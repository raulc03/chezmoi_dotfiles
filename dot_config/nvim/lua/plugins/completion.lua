return {
    {
        "saghen/blink.cmp",
        version = "1.*",
        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require('blink.cmp').setup {
                completion = {
                    menu = {
                        enabled = true,
                        border = "rounded",
                        winblend = 0,
                        scrollbar = true,
                    },
                },
                menu = {
                    draw = {
                        padding = 2,
                        gap = 1,
                        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
                    },
                },
                keymap = {
                    preset = "default",
                },

                appearance = {
                    use_nvim_cmp_as_default = true,
                    nerd_font_variant = "mono",
                },

                signature = {
                    enabled = true,
                },

                fuzzy = { implementation = "prefer_rust_with_warning" },
            }
            vim.keymap.set("i", "<C-e>", function()
                require('blink.cmp').show()
            end, { desc = "Show the completion menu" })
        end,

        -- use a release tag to download pre-built binaries
        opts_extend = { "sources.default" },
    },
}
