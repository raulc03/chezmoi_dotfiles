return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-context",
        },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query", "typescript", "javascript", "tsx" },
                sync_install = false,
                auto_install = false,
                highlight = {
                    enable = true,
                    disable = function(_, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false,
                },
            })
            require("treesitter-context").setup({
                enable = true, -- activa el plugin
                max_lines = 2, -- máximo de líneas que mantiene en pantalla
                trim_scope = "outer", -- recorta el contexto si es muy largo
                mode = "cursor", -- actualiza basado en posición del cursor
            })
        end,
    },
}
