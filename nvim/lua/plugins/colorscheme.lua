return {
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,

    opts = {
      -- Evondev Dracula Night Contrast
      colors = {
        bg = "#011627",
        fg = "#F8F8F2",

        selection = "#44475A",
        comment = "#7F848E",

        red = "#FF5555",
        orange = "#FFB86C",
        yellow = "#F1FA8C",
        green = "#20E3B2",
        purple = "#BD93F9",
        cyan = "#8BE9FD",
        pink = "#FF79C6",

        bright_red = "#FF6E6E",
        bright_green = "#20E3B2",
        bright_yellow = "#EAC394",
        bright_blue = "#BD93F9",
        bright_magenta = "#FF6BCB",
        bright_cyan = "#2CCCFF",
        bright_white = "#FFFFFF",

        menu = "#21222C",
        visual = "#44475A",
        gutter_fg = "#6272A4",
        nontext = "#3B4048",
        white = "#F8F8F2",
        black = "#00111D",
      },

      transparent_bg = false,

      -- Evondev doesn't italicise ordinary comments
      italic_comment = false,

      lualine_bg_color = "#011627",

      overrides = function(colors)
        return {
          -- Main editor
          Normal = {
            fg = "#F8F8F2",
            bg = "#011627",
          },

          NormalNC = {
            fg = "#F8F8F2",
            bg = "#011627",
          },

          -- Floating windows / menus
          NormalFloat = {
            fg = "#F8F8F2",
            bg = "#21222C",
          },

          FloatBorder = {
            fg = "#0D2235",
            bg = "#21222C",
          },

          Pmenu = {
            fg = "#F8F8F2",
            bg = "#21222C",
          },

          PmenuSel = {
            fg = "#F8F8F2",
            bg = "#44475A",
          },

          -- Selection / cursor
          Visual = {
            bg = "#44475A",
          },

          CursorLine = {
            bg = "#00111D",
          },

          CursorLineNr = {
            fg = "#8D92FF",
            bold = true,
          },

          LineNr = {
            fg = "#6272A4",
          },

          WinSeparator = {
            fg = "#0D2235",
          },

          -- Comments
          Comment = {
            fg = "#7F848E",
          },

          ["@comment"] = {
            fg = "#7F848E",
          },

          -- Functions
          ["@function"] = {
            fg = "#20E3B2",
          },

          ["@function.call"] = {
            fg = "#20E3B2",
          },

          ["@function.method"] = {
            fg = "#20E3B2",
          },

          ["@function.method.call"] = {
            fg = "#20E3B2",
          },

          ["@constructor"] = {
            fg = "#20E3B2",
          },

          -- Keywords
          ["@keyword"] = {
            fg = "#FF79C6",
          },

          ["@keyword.function"] = {
            fg = "#FF79C6",
          },

          ["@keyword.return"] = {
            fg = "#FF79C6",
          },

          ["@keyword.conditional"] = {
            fg = "#FF79C6",
          },

          ["@keyword.repeat"] = {
            fg = "#FF79C6",
          },

          ["@keyword.import"] = {
            fg = "#FF79C6",
          },

          -- Strings
          ["@string"] = {
            fg = "#F1FA8C",
          },

          -- Types/classes
          ["@type"] = {
            fg = "#8BE9FD",
            italic = true,
          },

          ["@type.builtin"] = {
            fg = "#8BE9FD",
            italic = true,
          },

          -- Constants
          ["@constant"] = {
            fg = "#BD93F9",
          },

          ["@constant.builtin"] = {
            fg = "#BD93F9",
          },

          -- Function args
          ["@variable.parameter"] = {
            fg = "#FFB86C",
            italic = true,
          },

          -- Normal variables
          ["@variable"] = {
            fg = "#F8F8F2",
          },

          -- Properties
          ["@property"] = {
            fg = "#FFFFFF",
          },

          -- HTML / JSX attributes
          ["@attribute"] = {
            fg = "#20E3B2",
          },

          -- HTML / JSX tags
          ["@tag"] = {
            fg = "#FF79C6",
          },

          -- Numbers
          ["@number"] = {
            fg = "#BD93F9",
          },

          ["@boolean"] = {
            fg = "#BD93F9",
          },

          -- Operators / punctuation
          ["@operator"] = {
            fg = "#FF79C6",
          },

          ["@punctuation"] = {
            fg = "#F8F8F2",
          },

          -- Diagnostics
          DiagnosticError = {
            fg = "#FF5555",
          },

          DiagnosticWarn = {
            fg = "#FFB86C",
          },

          DiagnosticInfo = {
            fg = "#8BE9FD",
          },

          DiagnosticHint = {
            fg = "#20E3B2",
          },

          -- Git
          DiffAdd = {
            fg = "#20E3B2",
          },

          DiffDelete = {
            fg = "#FF5555",
          },

          DiffChange = {
            fg = "#8BE9FD",
          },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
