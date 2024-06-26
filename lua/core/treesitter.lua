return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		---@type TSConfig
		---@diagnostic disable-next-line: missing-fields
		opts = {
			-- todo: slow on typescript files?
			highlight = {
				enable = true,
				disable = { 'nix', 'python', 'go', 'lua' },
			},
			indent = { enable = false },
			incremental_selection = {
				enable = true,
				keymaps = {
					node_incremental = 'v',
					node_decremental = 'V',
				},
			},
			textobjects = {
				move = {
					enable = false,
				},
			},

			auto_install = true,
			ensure_installed = {
				'c',
				'c_sharp',
				'cpp',
				'diff',
				'graphql',
				'haskell',
				'nix',
				'php',
				'python',
				'query',
				'regex',
				'rust',
				'scala',
				'vim',
				'vimdoc',
				-- shells
				'bash',
				'fish',
				-- config langs
				'json',
				'json5',
				'jsonc',
				'yaml',
				'toml',
				'ini',
				'csv',
				'tsv',
				-- doc langs
				'latex',
				'bibtex',
				'rst',
				'markdown',
				'markdown_inline',
			},
		},
		config = function(_, opts)
			require('nvim-treesitter.configs').setup(opts)
		end,
	},
}
