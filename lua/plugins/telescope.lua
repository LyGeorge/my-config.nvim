return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
        config = function()
            local builtin = require("telescope.builtin")

            pcall(require('telescope').load_extension, 'fzf')

            vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })

            require("telescope").load_extension("ui-select")
        end,
    },
}
