local present, vimtex = pcall(require, "vimtex")
if not present then
    return
end

vim.g.test="OLA"

vim.g.tex_flavor='latex'
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0
vim.conceallevel=1
vim.g.tex_conceal='abdmg'

vimtex.setup()
