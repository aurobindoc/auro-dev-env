vim.g.mapleader = " "

local k = vim.keymap

---------------------
-- General Keymaps
---------------------

-- Use jk instead of Escape to get out of insert mode 
k.set("i", "jk", "<ESC>")

-- Use leader + nh to remove highlights after search in normal mode
k.set("n", "<leader>nh", ":nohl<CR>")

-- Do not copy character when deleted witth x
k.set("n", "x", '"_x')

-- split window keybindings
k.set("n", "<leader>sv", "<C-w>v")  -- vertical
k.set("n", "<leader>sh", "<C-w>s")  -- horizontal

-- k.set("n", "<leader>sl", "<C-w>h")  -- left
-- k.set("n", "<leader>sr", "<C-w>l")  -- right
-- k.set("n", "<leader>su", "<C-w>k")  -- up
-- k.set("n", "<leader>sd", "<C-w>j")  -- down

k.set("n", "<leader>se", "<C-w>=")  -- equal size splits
k.set("n", "<leader>sx", ":close<CR>")  -- close splits

-- tab key bindings
k.set("n", "<leader>to", ":tabnew<CR>")  -- open new tab
k.set("n", "<leader>tx", ":tabclose<CR>")  -- open new tab
k.set("n", "<leader>tn", ":tabn<CR>")  -- open new tab
k.set("n", "<leader>tp", ":tabp<CR>")  -- open new tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
k.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
k.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
k.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
k.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
k.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
k.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
k.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
