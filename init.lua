require("options")
require("keymaps")
require("plugins")
vim.g.mapleader = " "
vim.cmd[[colorscheme tokyonight-night]]

-- quitting the vim windows closing nvim-tree at the same time
vim.keymap.set("n", "q", function()
  -- 現在のウィンドウのタイプが 'NvimTree' の場合
  if vim.api.nvim_win_get_option(0, "filetype") == "NvimTree" then
    vim.cmd("NvimTreeClose") -- NvimTreeを閉じるコマンド
    -- NvimTreeを閉じたら、もし他のバッファがない場合はNeovim自体も終了
    if #vim.api.nvim_list_bufs() == 1 then -- NvimTreeを閉じた後に残るバッファが1つ以下の場合（通常はNvimTreeのバッファが0になると想定）
        vim.cmd("qa") -- 全てのバッファを強制終了
    end
  else
    vim.cmd("q") -- それ以外の場合は通常の :q を実行
  end
end, { desc = "現在のウィンドウを閉じる (NvimTree対応)" })

-- For nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
