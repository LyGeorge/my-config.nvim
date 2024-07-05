return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>hP", function()
				require("gitsigns").diffthis("~")
			end)

			vim.keymap.set("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", {})
			vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", {})

			vim.keymap.set("n", "<leader>hS", ":Gitsigns stage_buffer<CR>", {})
			vim.keymap.set("n", "<leader>hR", ":Gitsigns reset_buffer<CR>", {})

			vim.keymap.set("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>", {})
		end,
	},
}
