-- Hide ~ from end of lines.
vim.opt.fillchars = { eob = " " }

-- -- Highlightign line number for lsp diagnostics sings
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",

  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticLineNrError", {
      bg = "#51202A",
      fg = "#FF0000",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "DiagnosticLineNrWarn", {
      bg = "#51412A",
      fg = "#FFA500",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "DiagnosticLineNrInfo", {
      bg = "#1E535D",
      fg = "#00FFFF",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "DiagnosticLineNrHint", {
      bg = "#1E205D",
      fg = "#000FFF",
      bold = true,
    })

    vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "", numhl = "DiagnosticLineNrError" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "", numhl = "DiagnosticLineNrWarn" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "", numhl = "DiagnosticLineNrInfo" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "", numhl = "DiagnosticLineNrHint" })
  end,
})

vim.g.tokyonight_style = "night" -- styles: storm, night and day.
vim.g.enfocado_style = "nature" -- styles: nature and neon.

vim.g.enfocado_plugins = {
  "cmp",
  "dashboard",
  "gitsigns",
  "lsp",
  "lsp-installer",
  "matchup",
  "packer",
  "scrollview",
  "telescope",
  "todo-comments",
  "tree",
  "treesitter",
  "vista",
  "which-key",
}
require("onedark").setup({
  -- Main options --
  style = "deep", -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  term_colors = true,
  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = "italic",
    keywords = "none",
    functions = "none",
    strings = "none",
    variables = "none",
  },
  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
})

vim.cmd("colorscheme enfocado")

function _G.make_codeart_transparent()
  vim.api.nvim_set_hl(0, "Normal", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "NormalNc", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "LineNr", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "CursorLineNr", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "StatusLine", { bg = nil })
  vim.api.nvim_set_hl(0, "StatusLineNc", { bg = nil })

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "NvimTreeNormalNc", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { bg = nil, fg = nil })

  vim.api.nvim_set_hl(0, "lualine_b_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_command", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_command", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_terminal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_terminal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_replace", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_replace", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_a_inactive", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_inactive", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_c_inactive", { bg = nil })

  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_a_normal_to_lualine_b_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_normal_to_lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_a_visual_to_lualine_b_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_visual_to_lualine_c_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_info_normal_to_lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_a_insert_to_lualine_b_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_info_normal_to_lualine_c_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_insert_to_lualine_c_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_hint_normal_to_lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_error_normal_to_lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_error_normal_to_lualine_c_insert", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_a_command_to_lualine_b_command", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_command_to_lualine_c_command", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_command", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diagnostics_info_normal_to_lualine_c_visual", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_transitional_lualine_b_diff_modified_normal_to_lualine_c_insert", { bg = nil })

  vim.api.nvim_set_hl(0, "lualine_b_diff_added_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diff_modified_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diff_removed_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diagnostics_error_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diagnostics_warn_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diagnostics_info_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_b_diagnostics_hint_normal", { bg = nil })
  vim.api.nvim_set_hl(0, "lualine_x_DevIconLua_normal", { bg = nil })

  vim.api.nvim_set_hl(0, "BufferLineFill", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDiagnostics", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineTab", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineTabSelected", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineTabClose", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDuplicate", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDuplicateSelected", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDuplicateVisible", { bg = nil, fg = nil })

  vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineCloseButton", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineSeperator", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineSeperatorVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineGroupSeperator", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDiagnostic", { bg = nil, fg = nil })

  vim.api.nvim_set_hl(0, "BufferLinePick", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLinePickSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDevIconLuaSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineDevIconDefaultInactive", { bg = nil })

  vim.api.nvim_set_hl(0, "BufferLineError", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnostic", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnosticVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnosticSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineErrorDiagnosticSelected", { bg = nil })

  vim.api.nvim_set_hl(0, "BufferLineWarning", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnosticVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnostic", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnosticSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineWarningDiagnosticSelected", { bg = nil })

  vim.api.nvim_set_hl(0, "BufferLineInfo", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoDiagnosticVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoDiagnostic", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoDiagnosticSelected", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineInfoDiagnosticSelected", { bg = nil })

  vim.api.nvim_set_hl(0, "BufferLineModifiedVisible", { bg = nil, fg = nil })
  vim.api.nvim_set_hl(0, "BufferLineModified", { bg = nil })
  vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { bg = nil })

  vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = nil })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = nil })
end
