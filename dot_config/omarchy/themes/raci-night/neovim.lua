return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#0D0E12",
                bg_dark = "#0D0E12",
                bg_highlight = "#787c8c",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#F2F4EE",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#787c8c",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#ac827b",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d1b6b2",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#E0E0D9",
                -- green: Comments, strings, success states, git additions
                green = "#D2D3CE",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#7EB4C1",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#a7a7af",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#b4b0b5",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e1dfe2",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
