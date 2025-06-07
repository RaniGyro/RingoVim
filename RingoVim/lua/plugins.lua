return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- ASM syntax
  use 'Shirk/vim-gas' -- For x86 and x86_64 assembly
end)

