local config = require("tokyodark.config")
local utils = require("tokyodark.utils")

local palette = {
    black = "#06080A",
    bg0 = "#574464",
    bg1 = "#3a3141",
    bg2 = "#3a3141",
    bg3 = "#362740",
    bg4 = "#e086e0",
    bg5 = "#e086e0",
    bg_whitespace = "#7a6a84",
    bg_red = "#773440",
    bg_green = "#98C379",
    bg_blue = "#9FBBF3",
    diff_red = "#FE6D85",
    diff_green = "#2c9465",
    diff_blue = "#2A3A5A",
    diff_add = "#ccfaed",
    diff_change = "#ffd9db",
    diff_delete = "#773440",
    diff_text = "#A485DD",
    fg = "#f1c4e0",
    red = "#B52A5B",
    creme = "#f1c4e0",
    orange = "#ea9296",
    yellow = "#D7A65F",
    green = "#71d1c4",
    blue = "#8897F4",
    lblue = "#B5C6EB",
    cyan = "#38A89D",
    purple = "#A485DD",
    lavender = "#bd93f9",
    grey = "#4A5057",
    none = "NONE",
}

local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do
        colors_corrected[k] = utils.color_gamma(v, config.gamma)
    end
    return colors_corrected
end

local custom_palette = type(config.custom_palette) == "function"
        and config.custom_palette(palette)
    or config.custom_palette

return gamma_correction(vim.tbl_extend("force", palette, custom_palette))
