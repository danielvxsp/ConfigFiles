-- Ensure Packer is installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
    end
end
ensure_packer()

-- Packer configuration
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'   -- LSP support
    use 'navarasu/onedark.nvim'   -- Theme
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'  -- Automatically update parsers on install
    }
end)

