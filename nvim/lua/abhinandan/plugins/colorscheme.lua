return {
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  config = function()
    vim.opt.background = "dark"
    vim.cmd("colorscheme oxocarbon")

    -- Set transparency for Normal and floating windows
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

    -- ✨ Add this to fix transparency for NvimTree and friends
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })

    -- (Optional) Fix for Telescope
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })

    -- Fix NvimTree transparency
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "none", fg = "none" }) -- remove vertical separator

    local transparent_groups = {
      "Normal", "NormalNC", "NormalFloat", "EndOfBuffer", "SignColumn",
      "NvimTreeNormal", "NvimTreeNormalNC", "NvimTreeEndOfBuffer",
      "NvimTreeVertSplit", "NvimTreeStatusLine", "NvimTreeStatusLineNC",
      "VertSplit", "FloatBorder", "LineNr", "CursorLineNr", "FoldColumn", "WinSeparator"
    }
    for _, group in ipairs(transparent_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
    end

    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "none" })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#89b4fa" })  -- or any color you like

  end,
}

