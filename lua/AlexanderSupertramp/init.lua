require("AlexanderSupertramp.remap")
require("AlexanderSupertramp.set")


function save_cursor()
  vim.cmd([[
    if line("'\"") > 0 && line("'\"") <= line("$") |
      let position = line("'\"") . "," . col("'\"") |
      else |
      let position = "1,0" |
    endif |
    execute 'normal! :e +' . position . " " . expand("%")
  ]])
end

vim.cmd([[
  augroup vimrc
    autocmd!
    autocmd BufWritePre * :lua save_cursor()
  augroup END
]])

vim.cmd([[
  augroup vimrc
    autocmd!
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute 'normal! g`"zvzz' | endif
  augroup END
]])

