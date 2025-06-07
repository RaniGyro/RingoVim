local theme = {}

function theme.load()
  vim.cmd("highlight Normal guibg=#0e0e0e guifg=#f4e7c5")
  vim.cmd("highlight Comment guifg=#6a994e gui=italic")
  vim.cmd("highlight Function guifg=#3a86ff gui=bold")
  vim.cmd("highlight Keyword guifg=#c1121f gui=italic")
  vim.cmd("highlight Type guifg=#9b5de5")
  vim.cmd("highlight LineNr guifg=#6a994e")
  vim.cmd("highlight CursorLineNr guifg=#ffd60a gui=bold")
  vim.cmd("highlight Visual guibg=#333333")
  vim.cmd("highlight StatusLine guibg=#0e0e0e guifg=#ffd60a")
end

return theme

