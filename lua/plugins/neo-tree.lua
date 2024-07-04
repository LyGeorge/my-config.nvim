return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle <CR>")

		vim.g.loaded_netrwPlugin = 1
		vim.g.loaded_netrw = 1

		require("neo-tree").setup({
			close_if_last_window = true,
		})
	end,
}
