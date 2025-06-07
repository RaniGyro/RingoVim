return {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()
    require('telescope').setup{
      defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
      },
    }

    -- Example keymap
    vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { noremap = true })
  end,
}

