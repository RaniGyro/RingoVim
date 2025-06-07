return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')

    -- C/C++ LSP
    lspconfig.clangd.setup{}

    -- ASM LSP setup
    lspconfig.asm_lsp = {
      cmd = { "asm-lsp" },  -- make sure asm-lsp is installed & in your PATH
      filetypes = { "asm", "nasm", "gas", "asm16", "asmx86" },
      root_dir = lspconfig.util.root_pattern(".git", "."),
      settings = {},
    }
    lspconfig.asm_lsp.setup{}
  end,
}

