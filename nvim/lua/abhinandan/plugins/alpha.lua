return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", " > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", " > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", " > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯 > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NeoVim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    -- Set highlight groups for a custom look
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#b4befe", bg = "none" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#cdd6f4", bg = "none" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#89dceb", bg = "none" })

    -- Optional: assign highlights to dashboard sections
    dashboard.section.header.highlight = "AlphaHeader"
    dashboard.section.buttons.highlight = "AlphaButtons"

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

