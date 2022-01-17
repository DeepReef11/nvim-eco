local tokyonight_colors = require("tokyonight.colors").setup({})

-- Tokyonight config
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_colors = {
  border = '#1A1B26';
}

-- Nighyfly config
vim.g.nightflyCursorColor         = 1
vim.g.nightflyUnderlineMatchParen = 0
vim.g.nightflyNormalFloat         = 1

vim.cmd('colorscheme ' .. EcoVim.colorscheme)

-- Cursor line
vim.highlight.create('CursorLineNR', { guifg = "Yellow", ctermfg = "Yellow", guibg = "None", cterm = "bold" }, false);

if EcoVim.colorscheme == 'tokyonight' then
  vim.highlight.create('LineNr', { guifg = "White", ctermfg = "White", guibg = "None"}, false);
  vim.highlight.create('BufferTabpageFill', { guifg = "None" }, false);
  vim.highlight.create('NvimTreeNormal', { guibg = "None" }, false);
end

if EcoVim.colorscheme == 'nightfly' then
  -- Errors
  vim.highlight.create('LspDiagnosticsVirtualTextError', { guifg = "Red", ctermfg = "Red", gui = "bold" }, false);
  vim.highlight.create('DiagnosticVirtualTextError', { guifg = "Red", ctermfg = "Red", gui = "bold" }, false);

  -- Warnings
  vim.highlight.create('LspDiagnosticsVirtualTextWarning', { guifg = "Yellow", ctermfg = "Yellow" }, false);
  vim.highlight.create('DiagnosticVirtualTextWarn', { guifg = "Yellow", ctermfg = "Yellow" }, false);

  -- Info & Hints
  vim.highlight.create('DiagnosticVirtualTextInfo', { guifg = "White", ctermfg = "White" }, false);
  vim.highlight.create('DiagnosticVirtualTextHint', { guifg = "White", ctermfg = "White" }, false);

  -- Comment in italics
  vim.highlight.create('Comment', { gui = "italic", cterm = "italic" }, false);

  -- Change color of floating popup border
  vim.highlight.link('FloatBorder', EcoVim.ui.float.highlight, true);

  -- Illuminate
  vim.highlight.link('LspReferenceText', 'CursorLine', true);
  vim.highlight.link('LspReferenceWrite', 'CursorLine', true);
  vim.highlight.link('LspReferenceRead', 'CursorLine', true);
end
