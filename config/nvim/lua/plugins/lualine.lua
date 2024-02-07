return {
  "nvim-lualine/lualine.nvim",
  event = { "InsertEnter", "CmdLineEnter" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = function(_, opts)
    opts.options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        inactive_winbar = {},
        statusline = { "alpha", "dashboard", "fzf", "lazy", "mason", "TelescopePrompt" },
        tabline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    }

    opts.sections = {
      lualine_a = {
        {
          function()
            return " "
          end,
          separator = "",
          padding = { left = 1, right = 0 },
        },
        "mode",
      },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", separator = "" },
        "filesize",
        "filetype",
      },
      lualine_x = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_y = {
        "searchcount",
        { "selectioncount", separator = "" },
        "fileformat",
      },
      lualine_z = {
        "encoding",
        function()
          return "  " .. os.date("%I:%M")
        end,
      },
    }

    opts.tabline = {}
    opts.winbar = {}
    opts.inactive_winbar = {}
    opts.extensions = { "neo-tree", "lazy" }
  end,
}
