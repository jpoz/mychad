---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",

    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = "",

    ["W"] = "",
  },
}

M.jpoz = {
  n = {
     ["W"] = {"<cmd>write<cr>", "Write"},
     ["<C-p>"] = {"<cmd>Telescope find_files<cr>", "Find File"},
     ["<leader>ld"] = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition"},
     ["<leader>lR"] = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
     ["<leader>Kill"] = {"<cmd>quitall!<cr>", "Kill Vim"},
     ["<leader>k"] = {
        function()
          require("nvchad.tabufline").close_buffer()
        end,
        "Kill buffer",
      },
  },
}

return M
