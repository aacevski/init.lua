require("obsidian").setup({
	dir = "~/andrejs-vault",
	completion = {
		nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
	},
	notes_subdir = "notes",
	daily_notes = {
		folder = "dailies",
	},
})

vim.keymap.set("n", "<Leader>on", "<cmd>ObsidianNew<CR>")
vim.keymap.set("n", "<Leader>od", "<cmd>ObsidianToday<CR>")
vim.keymap.set("n", "<Leader>of", "<cmd>ObsidianQuickSwitch<CR>")

vim.keymap.set("n", "gf", function()
	if require("obsidian").util.cursor_on_markdown_link() then
		return "<cmd>ObsidianFollowLink<CR>"
	else
		return "gf"
	end
end, { noremap = false, expr = true })
