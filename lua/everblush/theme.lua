local M = {}

function M.get(config)
    local p = require('everblush.palette')

    local theme = {}

    local background = (config.transparent_background and p.none) or p.background
    local contrast = config.nvim_tree.contrast

    theme = {
        -- base highlights
        Boolean = { fg = p.color5 },
        Character = { fg = p.color12 },
        ColorColumn = { bg = background },
        Comment = { fg = p.comment, italic = true },
        Conceal = { fg = p.color4, bg = background },
        Conditional = { fg = p.color6 },
        Constant = { fg = p.color5 },
        Cursor = { fg = p.foreground, bg = p.foreground },
        CursorColumn = { bg = background },
        CursorIM = { fg = p.foreground, bg = p.foreground },
        CursorLine = { bg = p.cursorline },
        CursorLineNr = { fg = p.cursorline },
        Debug = { fg = p.color1 },
        Define = { fg = p.color6 },
        Delimiter = { fg = p.foreground },
        DiffAdd = { fg = p.color4, bg = background },
        DiffChange = { fg = p.color5, bg = background },
        DiffDelete = { fg = p.color1, bg = background },
        DiffText = { fg = p.color1, bg = background },
        Directory = { fg = p.color4 },
        EndOfBuffer = { fg = p.background },
        Error = { fg = p.color1, bg = background },
        ErrorMsg = { fg = p.color1, bg = background },
        Exception = { fg = p.color6 },
        Float = { fg = p.color5 },
        FloatBorder = { fg = p.color2 },
        FoldColumn = { fg = p.color4, bg = background },
        Folded = { fg = p.color4, bg = background },
        Function = { fg = p.color6 },
        Identifier = { fg = p.color5 },
        Ignore = { fg = p.color7, bg = background },
        IncSearch = { fg = p.background, bg = p.color10 },
        Include = { fg = p.color6 },
        Keyword = { fg = p.color6 },
        Label = { fg = p.color4 },
        LineNr = { fg = p.color0, bg = background },
        Macro = { fg = p.color6 },
        MatchParen = { fg = p.color4, bg = background },
        ModeMsg = { fg = p.foreground, bg = background },
        MoreMsg = { fg = p.color5 },
        MsgArea = { fg = p.foreground, bg = background },
        MsgSeparator = { fg = p.foreground, bg = background },
        NonText = { fg = p.color1 },
        Normal = { fg = p.foreground, bg = background },
        NormalFloat = { bg = background },
        NormalNC = { fg = p.foreground, bg = background },
        Number = { fg = p.color3 },
        Operator = { fg = p.color6 },
        Pmenu = { fg = p.foreground, bg = background },
        PmenuSbar = { bg = background },
        PmenuSel = { fg = p.background, bg = p.color4 },
        PmenuThumb = { bg = p.color2 },
        PreCondit = { fg = p.color6 },
        PreProc = { fg = p.color6 },
        Question = { fg = p.color5 },
        QuickFixLine = { bg = p.color2 },
        Repeat = { fg = p.color6 },
        Search = { fg = p.background, bg = p.color10 },
        SignColumn = { fg = p.background, bg = background },
        Special = { fg = p.color6 },
        SpecialChar = { fg = p.foreground },
        SpecialComment = { fg = p.color2 },
        SpecialKey = { fg = p.color4 },
        SpellBad = { fg = p.color2 },
        SpellCap = { fg = p.color6 },
        SpellLocal = { fg = p.color4 },
        SpellRare = { fg = p.color6 },
        Statement = { fg = p.color6 },
        StatusLine = { fg = foreground, bg = background },
        StatusLineNC = { bg = background, fg = p.background },
        Storage = { fg = p.color9 },
        StorageClass = { fg = p.color7 },
        String = { fg = p.color2 },
        Structure = { fg = p.color6 },
        Substitute = { fg = p.color3, bg = p.color6 },
        TabLine = { fg = p.color2, bg = background },
        TabLineFill = { fg = p.foreground, bg = background },
        TabLineSel = { fg = p.foreground, bg = background },
        Tag = { fg = p.color4 },
        TermCursor = { fg = p.foreground, bg = p.foreground },
        TermCursorNC = { fg = p.foreground, bg = p.foreground },
        Title = { fg = p.color4, bold = true },
        Todo = { fg = p.color1, bg = background },
        Type = { fg = p.color5 },
        Typedef = { fg = p.color6 },
        Underlined = { fg = p.color3 },
        Variable = { fg = p.color5 },
        VertSplit = { fg = p.background, bg = p.color0 },
        Visual = { fg = p.foreground, bg = p.color0 },
        VisualNOS = { bg = background },
        WarningMsg = { fg = p.color3, bg = background },
        Whitespace = { fg = p.color1 },
        WildMenu = { fg = p.color7, bg = p.color4 },
        lCursor = { fg = p.foreground, bg = p.foreground },

        -- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
        BufferLineFill = { fg = p.background, bg = background },
        BufferLineIndicatorSelected = { fg = p.color2 },

        -- Diagnostic
        DiagnosticError = { fg = p.color1 },
        DiagnosticHint = { fg = p.color2 },
        DiagnosticInfo = { fg = p.color4 },
        DiagnosticWarn = { fg = p.color3 },

        -- diff
        diffAdded = { fg = p.color4 },
        diffChanged = { fg = p.color5 },
        diffFile = { fg = p.color7 },
        diffIndexLine = { fg = p.color6 },
        diffLine = { fg = p.color1 },
        diffNewFile = { fg = p.color5 },
        diffOldFile = { fg = p.color5 },
        diffRemoved = { fg = p.color1 },

        -- gitsigns: https://github.com/lewis6991/gitsigns.nvim
        GitSignsAdd = { fg = p.color4 },
        GitSignsChange = { fg = p.color5 },
        GitSignsDelete = { fg = p.color1 },

        -- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = p.color0 },

        -- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
        DefinitionCount = { fg = p.color6 },
        DefinitionIcon = { fg = p.color7 },
        LspFloatWinBorder = { fg = p.background },
        LspFloatWinNormal = { bg = background },
        LspSagaBorderTitle = { fg = p.color7 },
        LspSagaCodeActionBorder = { fg = p.color7 },
        LspSagaCodeActionContent = { fg = p.color6 },
        LspSagaCodeActionTitle = { fg = p.color7 },
        LspSagaDefPreviewBorder = { fg = p.color4 },
        LspSagaFinderSelection = { fg = p.color1 },
        LspSagaHoverBorder = { fg = p.color7 },
        LspSagaRenameBorder = { fg = p.color4 },
        LspSagaSignatureHelpBorder = { fg = p.color1 },
        ReferencesCount = { fg = p.color6 },
        ReferencesIcon = { fg = p.color7 },
        TargetWord = { fg = p.color7 },

        -- Neogit: https://github.com/TimUntersberger/neogit
        NeogitBranch = { fg = p.color6 },
        NeogitDiffAddHighlight = { fg = p.color4, bg = background },
        NeogitDiffContextHighlight = { bg = background, fg = p.foreground },
        NeogitDiffDeleteHighlight = { fg = p.color1, bg = background },
        NeogitHunkHeader = { bg = background, fg = p.foreground },
        NeogitHunkHeaderHighlight = { bg = p.comment, fg = p.color7 },
        NeogitRemote = { fg = p.color6 },

        -- Neovim
        healthError = { fg = p.color1 },
        healthSuccess = { fg = p.color4 },
        healthWarning = { fg = p.color5 },

        -- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
        CmpDocumentationBorder = { fg = p.foreground, bg = background },
        CmpItemAbbr = { fg = p.foreground, bg = background },
        CmpItemAbbrDeprecated = { fg = p.color2, bg = background },
        CmpItemAbbrMatch = { fg = p.color7, bg = background },
        CmpItemAbbrMatchFuzzy = { fg = p.color7, bg = background },
        CmpItemKind = { fg = p.color4, bg = background },
        CmpItemMenu = { fg = p.color2, bg = background },

        -- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
        NvimTreeEmptyFolderName = { fg = p.color2 },
        NvimTreeEndOfBuffer = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeEndOfBufferNC = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeFolderIcon = { fg = p.color4, bg = background },
        NvimTreeFolderName = { fg = p.foreground },
        NvimTreeGitDeleted = { fg = p.color1 },
        NvimTreeGitDirty = { fg = p.color5 },
        NvimTreeGitNew = { fg = p.color4 },
        NvimTreeImageFile = { fg = p.foreground },
        NvimTreeIndentMarker = { fg = p.color0 },
        NvimTreeNormal = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeNormalNC = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeOpenedFolderName = { fg = p.color2 },
        NvimTreeRootFolder = { fg = p.color1 },
        NvimTreeSpecialFile = { fg = p.color6 },
        NvimTreeStatusLineNC = { bg = background, fg = p.background },
        NvimTreeSymlink = { fg = p.color7 },
        NvimTreeVertSplit = { fg = (contrast and p.background) or p.none, bg = (contrast and p.background) or p.none },

        -- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
        ["@attribute"] = { fg = p.color4 },
        ["@boolean"] = { fg = p.color6 },
        ["@character"] = { fg = p.color4 },
        ["@comment"] = { fg = p.comment, italic = true },
        ["@conditional"] = { fg = p.color1 },
        ["@constant"] = { fg = p.color6 },
        ["@constant.builtin"] = { fg = p.color4 },
        ["@constant.macro"] = { fg = p.color3 },
        ["@constructor"] = { fg = p.color4 },
        ["@exception"] = { fg = p.color8 },
        ["@field"] = { fg = p.color1 },
        ["@float"] = { fg = p.color8 },
        ["@function"] = { fg = p.color1 },
        ["@function.builtin"] = { fg = p.color14 },
        ["@function.macro"] = { fg = p.color2 },
        ["@include"] = { fg = p.color9 },
        ["@keyword"] = { fg = p.color5 },
        ["@keyword.function"] = { fg = p.color4 },
        ["@keyword.operator"] = { fg = p.color12 },
        ["@keyword.return"] = { fg = p.color4 },
        ["@label"] = { fg = p.color4 },
        ["@method"] = { fg = p.color12 },
        ["@namespace"] = { fg = p.color9 },
        ["@number"] = { fg = p.color3 },
        ["@operator"] = { fg = p.color7 },
        ["@parameter"] = { fg = p.color1 },
        ["@parameter.reference"] = { fg = p.color9 },
        ["@property"] = { fg = p.color1 },
        ["@punctuation.bracket"] = { fg = p.color7 },
        ["@punctuation.delimiter"] = { fg = p.color7 },
        ["@punctuation.special"] = { fg = p.color7 },
        ["@repeat"] = { fg = p.color11 },
        ["@string"] = { fg = p.color2 },
        ["@string.escape"] = { fg = p.color4 },
        ["@string.regex"] = { fg = p.color2 },
        ["@string.special"] = { fg = p.color4 },
        ["@symbol"] = { fg = p.color1 },
        ["@tag"] = { fg = p.color4 },
        ["@tag.attribute"] = { fg = p.color1 },
        ["@tag.delimiter"] = { fg = p.color7 },
        ["@text"] = { fg = p.color7 },
        ["@text.danger"] = { fg = p.color8 },
        ["@text.emphasis"] = { fg = p.color7, italic = true },
        ["@text.environment.name"] = { fg = p.color3 },
        ["@text.environtment"] = { fg = p.color5 },
        ["@text.literal"] = { fg = p.color2, italic = true },
        ["@text.math"] = { fg = p.color6 },
        ["@text.note"] = { fg = p.color8 },
        ["@text.reference"] = { fg = p.color6 },
        ["@text.strike"] = { fg = p.color7, strikethrough = true },
        ["@text.strong"] = { fg = p.color7, bold = true },
        ["@text.title"] = { fg = p.color3, bold = true },
        ["@text.underline"] = { fg = p.color5, underline = true },
        ["@text.uri"] = { fg = p.color3, underline = true },
        ["@text.warning"] = { fg = p.color0, bg = p.color1 },
        ["@type"] = { fg = p.color3 },
        ["@type.builtin"] = { fg = p.color3 },
        ["@variable"] = { fg = p.color7 },
        ["@variable.builtin"] = { fg = p.color4 },

        -- telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
        TelescopeBorder = { fg = p.color0, bg = background },
        TelescopeNormal = { fg = p.foreground, bg = background },
        TelescopeSelection = { fg = p.background, bg = p.color5 },

        -- trouble.nvim: https://github.com/folke/trouble.nvim
        LspTroubleCount = { fg = p.color6, bg = p.foreground },
        LspTroubleNormal = { fg = p.foreground, bg = background },
        LspTroubleText = { fg = p.foreground },

        -- vim-gitgutter: https://github.com/airblade/vim-gitgutter
        GitGutterAdd = { fg = p.color4 },
        GitGutterChange = { fg = p.color5 },
        GitGutterDelete = { fg = p.color1 },

        -- vim-illuminate: https://github.com/RRethy/vim-illuminate
        illuminatedCurWord = { bg = p.foreground },
        illuminatedWord = { bg = p.foreground },
    }

    vim.g.terminal_color_0 = p.color0
    vim.g.terminal_color_1 = p.color1
    vim.g.terminal_color_2 = p.color2
    vim.g.terminal_color_3 = p.color3
    vim.g.terminal_color_4 = p.color4
    vim.g.terminal_color_5 = p.color5
    vim.g.terminal_color_6 = p.color6
    vim.g.terminal_color_7 = p.color7
    vim.g.terminal_color_8 = p.color8
    vim.g.terminal_color_9 = p.color9
    vim.g.terminal_color_10 = p.color10
    vim.g.terminal_color_11 = p.color11
    vim.g.terminal_color_12 = p.color12
    vim.g.terminal_color_13 = p.color13
    vim.g.terminal_color_14 = p.color14
    vim.g.terminal_color_15 = p.color15

    return theme
end

return M

