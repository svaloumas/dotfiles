local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

toggleterm.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<leader>a]],
	start_in_insert = true,
	direction = "horizontal",
})
