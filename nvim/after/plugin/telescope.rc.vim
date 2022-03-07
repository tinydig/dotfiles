if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;s <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap  <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
	file_ignore_patterns = {
		"node_modules",
		"**.log"
	},
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
	vimgrep_arguments = {
	    '--hidden'
		},
  },
  pickers = {
	find_files = {
      theme = "dropdown",
    },
  },
}
EOF

