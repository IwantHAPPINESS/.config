local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


-- Setup lazy.nvim
require("lazy").setup({
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/vim-vsnip'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-cmdline' },
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'nvim-treesitter/nvim-treesitter'},
	{'numToStr/Comment.nvim', lazy = false},
	{'echasnovski/mini.nvim', version = false },
	{'echasnovski/mini.move', version = false },
	{'echasnovski/mini.pairs', version = false },
	{'saecki/crates.nvim', ft = {"toml"}, tag = 'stable'},
	{'mrcjkb/rustaceanvim', version = '^5', lazy = false },
	{"catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
	{"folke/todo-comments.nvim", dependencies = {"nvim-lua/plenary.nvim"}},
	{'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
	{"rust-lang/rust.vim", ft = "rust", init = function () vim.g.rustfmt_autosave = 1 end},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = {'nvim-lua/plenary.nvim'}},
	{'nvimdev/dashboard-nvim', event = 'VimEnter', dependencies = { {'nvim-tree/nvim-web-devicons'}}},
	{"nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim", "3rd/image.nvim"}},
	{"folke/which-key.nvim", event = "VeryLazy", keys = {{"<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)"}}},
})
