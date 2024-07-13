vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 20
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.mouse = "a"
vim.o.updatetime = 250

vim.diagnostic.config({
	virtual_text = false,
})

vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
