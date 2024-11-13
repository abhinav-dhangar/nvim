vim.cmd("command FloatBorderBGOff lua vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })")

-- Dark mode colorschemes
vim.keymap.set("n", "<leader>dp", ":colorscheme gruvbox | set background=dark | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>do", ":colorscheme zenbones | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>di", ":colorscheme kanagawa-dragon | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>du", ":colorscheme terafox | FloatBorderBGOff<CR>", {})
vim.keymap.set(
    "n","<leader>rp",":colorscheme rose-pine-moon <CR>",{}
)
-- Light mode colorschemes
vim.keymap.set("n", "<leader>lq", ":colorscheme material-lighter | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>lw", ":colorscheme rose-pine-dawn | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>le", ":colorscheme rose-pine-dawn | FloatBorderBGOff<CR>", {})
vim.keymap.set("n", "<leader>lr", ":colorscheme rose-pine-dawn | FloatBorderBGOff<CR>", {})





local luasnip = require("luasnip")
vim.keymap.set({ "i", "s" }, "<a-l>", function()
	if luasnip.jumpable(1) then
		luasnip.jump(1)
	end
end)
vim.keymap.set({ "i", "s" }, "<a-h>", function()
	if luasnip.jumpable(-1) then
		luasnip.jump(-1)
	end
end)

vim.keymap.set({ "i", "s" }, "<a-j>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(1)
	end
end)
vim.keymap.set({ "i", "s" }, "<a-k>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(-1)
	end
end)