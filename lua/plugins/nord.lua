return {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.nord_contrast = true
        vim.g.nord_italic = false

        require("nord").set()

        vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#444C5D' })
    end,
}
