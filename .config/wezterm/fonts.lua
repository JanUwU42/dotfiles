local wezterm = require("wezterm")

local M = {}

M.get_font = function(name)
  -- fonts I like, with the settings I prefer
  -- kept separately from the rest of the config so that I can easily change them
  local fonts = {
    berkeley = {
      font = {
        family = "RecursiveMonospaceCasual Nerd Font Mono",
        -- weight = "Bold",
      },
      size = 16,
    },
    comic = {
      font = "RecursiveMonospaceCasual Nerd Font Mono",
      size = 18,
    },
    fantasque = {
      font = "RecursiveMonospaceCasual Nerd Font Mono",
      size = 20,
    },
    victor = {
      font = {
        family = "RecursiveMonospaceCasual Nerd Font Mono",
        weight = "DemiBold",
        harfbuzz_features = { "ss02=1" },
      },
      size = 18,
    },
  }

  return {
    font = wezterm.font_with_fallback({
      fonts[name].font,
      "Symbols Nerd Font",
    }),
    size = fonts[name].size,
  }
end

return M
