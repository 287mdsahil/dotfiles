lua << EOF
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  hijack_cursor       = true,
  update_cwd          = true,
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
EOF

nnoremap <C-n> :NvimTreeToggle<CR>
