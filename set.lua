
local numberToggleGroup = vim.api.nvim_create_augroup("NumberToggle", { clear = true })

vim.api.nvim_create_autocmd(
  { "BufEnter", "InsertLeave", "FocusGained"},
  { pattern = "*",
    callback = function()
      vim.wo.relativenumber = true
    end,
    group = numberToggleGroup,
    desc = "Turn on relative line numbering when the buffer is entered.",
  }
)

vim.api.nvim_create_autocmd(
  { "BufLeave", "InsertEnter", "FocusLost"},
  { pattern = "*",
    callback = function()
      vim.wo.relativenumber = false
    end,
    group = numberToggleGroup,
    desc = "Turn off relative line numbering when the buffer is exited.",
  }
)
