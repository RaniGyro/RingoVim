-- RigoVim startup banner
vim.api.nvim_echo({{
  [[
.______       __  .__   __.   _______   ______   ____    ____  __  .___  ___. 
|   _  \     |  | |  \ |  |  /  _____| /  __  \  \   \  /   / |  | |   \/   | 
|  |_)  |    |  | |   \|  | |  |  __  |  |  |  |  \   \/   /  |  | |  \  /  | 
|      /     |  | |  . `  | |  | |_ | |  |  |  |   \      /   |  | |  |\/|  | 
|  |\  \----.|  | |  |\   | |  |__| | |  `--'  |    \    /    |  | |  |  |  | 
| _| `._____||__| |__| \__|  \______|  \______/      \__/     |__| |__|  |__| 


By: RaniGyro]]
}}, false, {})


-- plugins.lua

-- Example using packer.nvim plugin manager
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'          -- Packer manages itself

  -- Treesitter for syntax parsing/highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- asm language server integration
  use 'mattn/vim-asm-lsp'

  -- Telescope for fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- autopairs
  use 'windwp/nvim-autopairs'

	--require("core")
--require("core.ui").load()
require("plugins")
require("plugins.lsp")
require("plugins.telescope")
require("plugins.treesitter")
require("BeatlesDark").load()
require("keymaps") 
require("plugins")

end)

