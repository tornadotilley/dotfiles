-- 1. BASIC SETTINGS (Line Numbers & Spacing)
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Relative numbers for fast jumping
vim.opt.tabstop = 4            -- 1 tab = 4 spaces
vim.opt.shiftwidth = 4         -- Indent by 4 spaces
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Auto-indent new lines
vim.opt.termguicolors = true   -- Essential for good colors
vim.opt.cursorline = true      -- Highlight the current line

-- 2. BOOTSTRAP PLUG-IN MANAGER (For the color coding)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- 3. INSTALL COLORS & SYNTAX
require("lazy").setup({
  -- Better syntax highlighting (The "Color Coding")
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  
  -- A nice professional theme
  { "folke/tokyonight.nvim", config = function() vim.cmd.colorscheme("tokyonight") end },
})

-- 4. ACTIVATE SYNTAX HIGHLIGHTING
require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "bash", "python" }, -- add languages you use
  highlight = { enable = true },
})
