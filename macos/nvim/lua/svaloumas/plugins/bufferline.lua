local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		mode = "buffers", -- set to "tabs" to only show tabpages instead
		themable = true,
		numbers = "none",
		close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		indicator = {
			icon = "▎",
			style = "underline",
		},
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		--- name_formatter can be used to change the buffer's label in the bufferline.
		--- Please note some names can/will break the
		--- bufferline so use this at your discretion knowing that it has
		--- some limitations that will *NOT* be fixed.
		name_formatter = "name", -- buf contains:
		-- name                | str        | the basename of the active file
		-- path                | str        | the full path of the active file
		-- bufnr (buffer only) | int        | the number of the active buffer
		-- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
		-- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
		-- end,
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		truncate_names = true, -- whether or not tab names should be truncated
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
		diagnostics_indicator = nil,
		offsets = {
			{
				filetype = "NvimTree",
				text = "Explorer",
				text_align = "center",
				separator = true,
			},
		},
		color_icons = true,
		-- get_element_icon = function(element)
		-- element consists of {filetype: string, path: string, extension: string, directory: string}
		-- This can be used to change how bufferline fetches the icon
		-- for an element e.g. a buffer or a tab.
		-- e.g.
		-- local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(opts.filetype, { default = false })
		-- return icon, hl
		-- -- or
		-- 	local custom_map = {my_thing_ft: {icon = "my_thing_icon", hl}}
		-- 	return custom_map[element.filetype]
		-- end,
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_buffer_default_icon = true,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "thin",
		enforce_regular_tabs = false,
		always_show_bufferline = false,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		sort_by = "id",
	},
})
