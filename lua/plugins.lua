local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	"nvim-lua/plenary.nvim",


	-- colorschemes themes
	{ "EdenEast/nightfox.nvim" },
	"sainnhe/everforest",

{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
}

}

local opts = {}

require("lazy").setup(plugins, opts)
