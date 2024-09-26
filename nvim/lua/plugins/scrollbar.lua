if false then
    return {}
end

local colors = require("tokyonight.colors").setup()

return {
    {
        "petertriho/nvim-scrollbar",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        opts = {
            show = true,
            set_highlights = true,
            hide_if_all_visible = true,
            handle = {
                color = colors.fg_dark,
            },
            marks = {
                Search = { color = colors.orange },
                Error = { color = colors.error },
                Warn = { color = colors.warning },
                Info = { color = colors.info },
                Hint = { color = colors.hint },
                Misc = { color = colors.purple },
            },
            handlers = {
                cursor = false,
                gitsigns = true,
            },
        },
    },
}
