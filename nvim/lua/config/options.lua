-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- set tab to 4 spaces (https://www.reddit.com/r/neovim/comments/13uvsw6/how_can_i_set_my_tab_key_to_be_4_spaces_indent/)
local opt = vim.opt
opt.shiftwidth = 4

-- use qutebrowser for MarkdownPreview
vim.g.mkdp_browser = "qutebrowser"

-- use basedpyright with type checking instead of pyright
vim.g.lazyvim_python_lsp = "basedpyright"

-- fix algo class pygments package (https://www.reddit.com/r/neovim/comments/15nis22/vimtex_add_custom_compiler_options_shellescape/)
vim.g.vimtex_compiler_latexmk = {
    options = {
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-shell-escape",
    },
}
