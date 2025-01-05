require('lualine').setup {
    options = {
        theme = 'onedark',       -- Use 'onedark' theme to match your OneDark setup
        section_separators = '', -- Disable separators
        component_separators = '', -- Disable component separators
        icons_enabled = true,    -- Enable icons (requires 'nvim-web-devicons')
    },
    sections = {
        lualine_a = {'mode'},      -- Mode section (e.g., INSERT, NORMAL)
        lualine_b = {'branch'},    -- Git branch info
        lualine_c = {'filename'},  -- Current filename
        lualine_x = {'encoding', 'fileformat', 'filetype'}, -- Encoding and filetype info
        lualine_y = {'progress'},  -- Progress in the file (%)
        lualine_z = {'location'},  -- Current line/column location
    }
}

