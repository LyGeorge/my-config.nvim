return {
    'ray-x/lsp_signature.nvim',
    config = function()
        require("lsp_signature").setup({
            handler_opts = {
                border = "none",
            },
            hint_enable = false
        })
    end
}
