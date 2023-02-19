local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("n", "<Leader>hm", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<Leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
