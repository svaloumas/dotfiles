local M = {}

M.general = {
  n = {
    -- Resize split windows
    ["<C-Up>"] = { ":resize -2<CR>", "resize splits up" },
    ["<C-Down>"] = { ":resize +2<CR>", "resize splits down" },
    ["<C-Left>"] = { ":vertical resize -2<CR>", "resize splits left" },
    ["<C-Right>"] = { ":vertical resize +2<CR>", "resize splits right" },

    -- Move text up and down
    ["<A-j>"] = { "<ESC>:m .+1<CR>==" },
    ["<A-k>"] = { "<ESC>:m .-2<CR>==" },
  },
  v = {
    ["<A-j>"] = { ":m .+1<CR>==" },
    ["<A-k>"] = { ":m .-2<CR>==" },
  },
}

return M
