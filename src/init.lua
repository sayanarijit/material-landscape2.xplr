local function set_layout()
  local xplr = xplr
  xplr.config.layouts.builtin.default = {
    Vertical = {
      config = {
        constraints = {
          { Length = 2 },
          { Min = 1 },
          { Length = 2 },
        },
      },
      splits = {
        "SortAndFilter",
        {
          Horizontal = {
            config = {
              constraints = {
                { Percentage = 20 },
                { Percentage = 60 },
                { Percentage = 20 },
              },
            },
            splits = {
              "Selection",
              "Table",
              "HelpMenu",
            },
          },
        },
        "InputAndLogs",
      },
    },
  }

  xplr.config.layouts.builtin.no_help = {
    Vertical = {
      config = {
        constraints = {
          { Length = 2 },
          { Min = 1 },
        },
      },
      splits = {
        "SortAndFilter",
        {
          Horizontal = {
            config = {
              constraints = {
                { Percentage = 80 },
                { Percentage = 20 },
              },
            },
            splits = {
              "Table",
              "Selection",
            },
          },
        },
        "InputAndLogs",
      },
    },
  }

  xplr.config.layouts.builtin.no_selection = {
    Vertical = {
      config = {
        constraints = {
          { Length = 2 },
          { Min = 1 },
          { Length = 2 },
        },
      },
      splits = {
        "SortAndFilter",
        {
          Horizontal = {
            config = {
              constraints = {
                { Percentage = 80 },
                { Percentage = 20 },
              },
            },
            splits = {
                "Table",
                "HelpMenu",
            },
          },
        },
        "InputAndLogs",
      },
    },
  }

  xplr.config.layouts.builtin.no_help_no_selection = {
    Vertical = {
      config = {
        constraints = {
          { Length = 2 },
          { Min = 1 },
          { Length = 2 },
        },
      },
      splits = {
        "SortAndFilter",
        "Table",
        "InputAndLogs",
      },
    },
  }
end

local function setup(args)
  local xplr = xplr

  args = args or {}
  args.keep_default_layout = args.keep_default_layout or false

  xplr.config.general.default_ui.prefix = " "
  xplr.config.general.default_ui.suffix = ""

  xplr.config.general.focus_ui.prefix = "▸"
  xplr.config.general.focus_ui.suffix = ""
  xplr.config.general.focus_ui.style.fg = { Rgb = { 170, 150, 130 } }
  xplr.config.general.focus_ui.style.bg = { Rgb = { 50, 50, 50 } }
  xplr.config.general.focus_ui.style.add_modifiers = { "Bold" }

  xplr.config.general.selection_ui.prefix = " "
  xplr.config.general.selection_ui.suffix = ""
  xplr.config.general.selection_ui.style.fg = { Rgb = { 70, 70, 70 } }
  xplr.config.general.selection_ui.style.add_modifiers = { "Bold", "CrossedOut" }

  xplr.config.general.sort_and_filter_ui.separator.format = " » "

  xplr.config.general.panel_ui.default.title.style.bg = { Rgb = { 170, 150, 130 } }
  xplr.config.general.panel_ui.default.title.style.fg = { Rgb = { 40, 40, 40 } }
  xplr.config.general.panel_ui.default.title.style.add_modifiers = { "Bold" }
  xplr.config.general.panel_ui.default.style.fg = { Rgb = { 170, 150, 130 } }
  xplr.config.general.panel_ui.default.style.bg = { Rgb = { 33, 33, 33 } }
  xplr.config.general.panel_ui.default.borders = {}
  xplr.config.general.panel_ui.help_menu.style.bg = { Rgb = { 26, 26, 26 } }

  if not args.keep_default_layout then
    set_layout()
  end
end

return { setup = setup }
