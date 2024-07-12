return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
    },
    config = function()
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require("telescope").load_extension, "ui-select")

        require("telescope").setup({
            defaults = {
                path_display = { "smart" }
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
        })

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})
    end,
}
