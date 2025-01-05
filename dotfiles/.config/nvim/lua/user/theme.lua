-- Configure OneDark theme
require('onedark').setup {
    style = 'dark',  -- Choose between 'dark', 'darker', 'cool', 'warm', and 'warmer'
    transparent = true,  -- Enable or disable background transparency
    term_colors = true,   -- Change terminal colors
    ending_tildes = false,  -- Show tildes at the end of the buffer
    -- Add more customizations as needed
}

-- Activate the theme
require('onedark').load()

