return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = {
      char = "┊", -- You can also use "▏" or " " if you want invisible lines
      highlight = "IblIndent",
    },
    scope = {
      enabled = false, -- disable the big bold active indent line
    },
  },
  config = function(_, opts)
    require("ibl").setup(opts)

    -- Subtle, transparent-friendly indent lines
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2e2e3e", bg = "none", nocombine = true })
  end,
}

