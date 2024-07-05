return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "nord",
				component_separators = {},
				section_separators = {},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
