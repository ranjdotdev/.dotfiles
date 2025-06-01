-- Keymaps for Colemak-DH

local remaps = {
	h = "j",
	n = "k",
	m = "h",
	k = "l",
}

local modes = { "n", "v", "o" }

for _, mode in ipairs(modes) do
	for from, to in pairs(remaps) do
		vim.keymap.set(mode, from, to, { noremap = true, silent = true })
	end
end

local insert_nav = {
	["<C-h>"] = "<Left>",
	["<C-n>"] = "<Up>",
	["<C-j>"] = "<Down>",
	["<C-k>"] = "<Right>",
}

for from, to in pairs(insert_nav) do
	vim.keymap.set("i", from, to, { noremap = true, silent = true })
end
