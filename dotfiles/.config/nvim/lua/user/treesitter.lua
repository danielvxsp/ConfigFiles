require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "bash", "lua", "python", "html", "css", "json", "c",
        "rust", "go", "java", "typescript"  -- Add more languages here
    },

    -- Enable syntax highlighting
    highlight = {
        enable = true,                -- Enable Treesitter-based highlighting
        additional_vim_regex_highlighting = false,  -- Use Treesitter only
    },

    -- Optional: Enable additional features
    indent = {
        enable = true,  -- Enable better indentation
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    -- Enable other modules like textobjects, playground, etc., as needed
}

