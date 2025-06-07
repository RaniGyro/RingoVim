vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Undo with Ctrl+Z (normal mode)
keymap("n", "<C-z>", "u", opts)

-- Redo with Y (normal mode)
keymap("n", "<C-y>", "<C-r>", opts)

-- Copy with Ctrl+C (normal and visual modes)
keymap({"n", "v"}, "<C-c>", '"+y', opts)

-- Paste with Ctrl+V (normal and insert modes)
keymap("n", "<C-v>", '"+p', opts)
keymap("i", "<C-v>", "<Esc>+pa", opts)  -- in insert mode, paste from system clipboard

-- Optional: paste in visual mode as well
keymap("v", "<C-v>", '"+p', opts)


-- Disable arrow keys to force hjkl usage
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

keymap("v", "<Up>", "<Nop>", opts)
keymap("v", "<Down>", "<Nop>", opts)
keymap("v", "<Left>", "<Nop>", opts)
keymap("v", "<Right>", "<Nop>", opts)

keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)


-- Basic movement with hjkl
keymap("n", "h", "h", opts)
keymap("n", "l", "l", opts)
keymap("n", "k", "k", opts)
keymap("n", "j", "j", opts)

-- Basic commands
keymap("n", ":q", ":q<CR>", opts)
keymap("n", ":w", ":w<CR>", opts)
keymap("n", ":wq", ":wq<CR>", opts)
keymap("n", ":x", ":x<CR>", opts)

-- File explorer
keymap("n", "<leader>pv", ":Ex<CR>", opts)         -- Open built-in file explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle nvim-tree

-- Save, quit shortcuts
keymap("n", "<F5>", ":w<CR>", opts)
keymap("n", "<F6>", ":q<CR>", opts)
keymap("n", "<F7>", ":wq<CR>", opts)
keymap("n", "<F8>", ":so<CR>", opts)  -- source config

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fd", ":Telescope oldfiles<CR>", opts)  -- recent files

-- Buffer management
keymap("n", "<leader>bd", ":bd<CR>", opts)  -- close buffer

-- LSP mappings
keymap("n", "gd", vim.lsp.buf.definition, opts)
keymap("n", "gD", vim.lsp.buf.declaration, opts)
keymap("n", "gi", vim.lsp.buf.implementation, opts)
keymap("n", "gr", vim.lsp.buf.references, opts)
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
keymap("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)

-- Diagnostics
keymap("n", "<leader>ld", "<cmd>TroubleToggle<CR>", opts)
keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)

-- Git
keymap("n", "<leader>gg", ":LazyGit<CR>", opts)
keymap("n", "<leader>gc", ":Git commit<CR>", opts)
keymap("n", "<leader>gp", ":Git push<CR>", opts)
keymap("n", "<leader>gl", ":Git pull<CR>", opts)

-- Terminal and UI toggles
keymap("n", "<leader>tt", ":split | terminal<CR>", opts)
keymap("n", "<leader>m", ":MarkdownPreviewToggle<CR>", opts)
keymap("n", "<leader>u", ":NvimTreeToggle<CR>", opts) -- example UI toggle

-- Transparent background toggle (you mentioned <leader>cd)
keymap("n", "<leader>cd", function()
  vim.cmd("hi Normal guibg=NONE")
end, opts)

