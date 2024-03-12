require("toggleterm").setup{
	direction = "horizontal",
	size = 20,
    shade_terminals = false,
	open_mapping = [[<C-j>]],
      float_opts = {
    border = 'single',
    width = 90,
    height = 20,
    winblend = 0,
    zindex = 1,
  },
}
