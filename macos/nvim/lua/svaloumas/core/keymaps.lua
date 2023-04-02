vim.g.mapleader = " "

local keymap = vim.keymap -- for consiseness

-- Insert

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- keymap.set("n", "x", '"_x') -- no copy with x, only delete

-- Normal

-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- mxke split window equal width

-- diagnostics
keymap.set("n", "]d", "<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
keymap.set("n", "[d", "<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>")

-- resize with arrows
keymap.set("n", "<S-Up>", ":resize +2<CR>")
keymap.set("n", "<S-Down>", ":resize -2<CR>")
keymap.set("n", "<S-Left>", ":vertical resize +2<CR>")
keymap.set("n", "<S-Right>", ":vertical resize -2<CR>")

-- buffers
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>c", ":bd<CR>")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
--
-- Move text up and down
keymap.set("n", "<C-S-j>", "<ESC>:m .+1<CR>")
keymap.set("n", "<C-S-k>", "<ESC>:m .-2<CR>")

-- plugin keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- quick fix
keymap.set("n", "[q", ":cnext<CR>")
keymap.set("n", "]q", ":cprev<CR>")

-- Visual

-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move text up and down
keymap.set("v", "<C-S-j>", ":m .+1<CR>")
keymap.set("v", "<C-S-k>", ":m .-2<CR>")

-- not yank with paste
keymap.set("v", "p", '"_dP')

-- Terminal
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")
