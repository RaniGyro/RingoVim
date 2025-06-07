return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "cpp", "lua", "asm", "html", "css", "javascript", },  -- include asm parser
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}

