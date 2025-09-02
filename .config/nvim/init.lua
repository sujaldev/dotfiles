-- vim: set textwidth=100 colorcolumn=101:

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true


---------------------------------------------- Options ---------------------------------------------

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"


-- Every wrapped line will continue visually indented (same amount of space as the beginning of that
-- line), thus preserving horizontal blocks of text.
vim.o.breakindent = true

-- Disabling this because it seems like a security nightmare.
-- vim.o.undofile = true

----------------------------------------------------------------------------------------------------
--                                       Search and Replace                                       --
----------------------------------------------------------------------------------------------------
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Preview substitutions live.
vim.o.inccommand = 'split'
----------------------------------------------------------------------------------------------------

-- Adds a column of space to the left of the line number column.
-- TODO: Disabling until I'm sure I need this.
-- vim.o.signcolumn = "yes"

-- Decrease update time
-- If this many milliseconds nothing is typed the swap file will be written to disk.
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300 -- Not sure why I need this?


-- When splitting create new buffer on the right for vertical split and below for horizontal split.
vim.o.splitright = true
vim.o.splitbelow = true

-- Makes tabs, non breaking space and trailing space (at the end of a line) visible.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Highlight the line the cursor is located on.
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10


------------------------------------------- Key Bindings -------------------------------------------

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Escape terminal easily
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
