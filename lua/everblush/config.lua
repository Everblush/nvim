local M = {}

M.highlights_base = function (colors)
  return {
    Normal = { guifg = colors.foreground, guibg = colors.background },
    StatusLineNC = { guibg = colors.background, guifg = colors.background },
    StatusLine = { guibg = colors.background, guifg = colors.background },
    SignColumn = { guibg = colors.background, guifg = colors.background },
    MsgArea = { guifg = colors.foreground, guibg = colors.background },
    ModeMsg = { guifg = colors.foreground, guibg = colors.background },
    MsgSeparator = { guifg = colors.foreground, guibg = colors.background },
    SpellBad = { guifg = colors.color2 },
    SpellCap = { guifg = colors.color6 },
    SpellLocal = { guifg = colors.color4 },
    SpellRare = { guifg = colors.color6 },
    NormalNC = { guifg = colors.foreground, guibg = colors.background },
    Pmenu = { guifg = colors.foreground, guibg = colors.background },
    PmenuSel = { guifg = colors.background, guibg = colors.color4 },
    WildMenu = { guifg = colors.color7, guibg = colors.color4 },
    CursorLineNr = { guifg = colors.color0 },
    Comment = { guifg = colors.color0 },
    Folded = { guifg = colors.color4, guibg = colors.background },
    FoldColumn = { guifg = colors.color4, guibg = colors.background },
    LineNr = { guifg = colors.color0, guibg = colors.background },
    FloatBorder = { guifg = colors.background, guibg = colors.background },
    Whitespace = { guifg = colors.color1 },
    VertSplit = { guifg = colors.background, guibg = colors.color0 },
    CursorLine = { guibg = colors.background },
    CursorColumn = { guibg = colors.background },
    ColorColumn = { guibg = colors.background },
    NormalFloat = { guibg = colors.background },
    Visual = { guibg = colors.color0, guifg = colors.foreground },
    VisualNOS = { guibg = colors.background },
    WarningMsg = { guifg = colors.color3, guibg = colors.background },
    DiffAdd = { guifg = colors.background, guibg = colors.color4 },
    DiffChange = { guifg = colors.background, guibg = colors.color5 },
    DiffDelete = { guifg = colors.background, guibg = colors.color11 },
    QuickFixLine = { guibg = colors.color2 },
    PmenuSbar = { guibg = colors.background },
    PmenuThumb = { guibg = colors.color2 },
    MatchParen = { guifg = colors.color4, guibg = colors.background },
    Cursor = { guifg = colors.fomeground, guibg = colors.cursor },
    lCursor = { guifg = colors.foreground, guibg = colors.cursor },
    CursorIM = { guifg = colors.foreground, guibg = colors.cursor },
    TermCursor = { guifg = colors.foreground, guibg = colors.cursor },
    TermCursorNC = { guifg = colors.foreground, guibg = colors.cursor },
    Conceal = { guifg = colors.color4, guibg = colors.background },
    Directory = { guifg = colors.color4 },
    SpecialKey = { guifg = colors.color4 },
    Title = { guifg = colors.color4 },
    ErrorMsg = { guifg = colors.color11, guibg = colors.background },
    Search = { guifg = colors.background, guibg = colors.color2 },
    IncSearch = { guifg = colors.background, guibg = colors.color2 },
    Substitute = { guifg = colors.color3, guibg = colors.color6 },
    MoreMsg = { guifg = colors.color5 },
    Question = { guifg = colors.color5 },
    EndOfBuffer = { guifg = colors.background },
    NonText = { guifg = colors.color1 },
    Variable = { guifg = colors.color5 },
    String = { guifg = colors.color2 },
    Character = { guifg = colors.color12 },
    Constant = { guifg = colors.color5 },
    Number = { guifg = colors.color3 },
    Boolean = { guifg = colors.color5 },
    Float = { guifg = colors.color5 },
    Identifier = { guifg = colors.color5 },
    Function = { guifg = colors.color6 },
    Operator = { guifg = colors.color6 },
    Type = { guifg = colors.color5 },
    StorageClass = { guifg = colors.color7 },
    Structure = { guifg = colors.color6 },
    Typedef = { guifg = colors.color6 },
    Keyword = { guifg = colors.color6 },
    Statement = { guifg = colors.color6 },
    Conditional = { guifg = colors.color6 },
    Repeat = { guifg = colors.color6 },
    Label = { guifg = colors.color4 },
    Exception = { guifg = colors.color6 },
    Include = { guifg = colors.color6 },
    PreProc = { guifg = colors.color6 },
    Define = { guifg = colors.color6 },
    Macro = { guifg = colors.color6 },
    PreCondit = { guifg = colors.color6 },
    Special = { guifg = colors.color6 },
    SpecialChar = { guifg = colors.foreground },
    Tag = { guifg = colors.color4 },
    Debug = { guifg = colors.color11 },
    Delimiter = { guifg = colors.foreground },
    SpecialComment = { guifg = colors.color2 },
    Ignore = { guifg = colors.color7, guibg = colors.background },
    Todo = { guifg = colors.color11, guibg = colors.background },
    Error = { guifg = colors.color11, guibg = colors.background },
    TabLine = { guifg = colors.color2, guibg = colors.background },
    TabLineSel = { guifg = colors.foreground, guibg = colors.background },
    TabLineFill = { guifg = colors.foreground, guibg = colors.background },
    CmpDocumentationBorder = { guifg = colors.foreground, guibg = colors.background },
    CmpItemAbbr = { guifg = colors.foreground, guibg = colors.background },
    CmpItemAbbrDeprecated = { guifg = colors.color2, guibg = colors.background },
    CmpItemAbbrMatch = { guifg = colors.color7, guibg = colors.background },
    CmpItemAbbrMatchFuzzy = { guifg = colors.color7, guibg = colors.background },
    CmpItemKind = { guifg = colors.color4, guibg = colors.background },
    CmpItemMenu = { guifg = colors.color2, guibg = colors.background },

    -- treesitter

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may color5.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For color1 blocks.
    TSNote = { guifg = colors.background, guibg = colors.color5 },
    TSComment = { guifg = colors.color0 },
    TSWarning = { guifg = colors.background, guibg = colors.color5 },
    TSDanger = { guifg = colors.background, guibg = colors.color3 },
    TSConstructor = { guifg = colors.color6 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { guifg = colors.color12 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { guifg = colors.color6 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { guifg = colors.color6 }, -- For keywords used to define a fuction.
    TSLabel = { guifg = colors.color7 }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    TSNumber = { guifg = colors.color3 },
    TSOperator = { guifg = colors.color7 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { guifg = colors.color5 }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { guifg = colors.color4 }, -- Same as `TSField`.
    TSPunctDelimiter = { guifg = colors.color7 }, -- For delimiters ie: `.`
    TSPunctBracket = { guifg = colors.foreground }, -- For brackets and parens.
    TSPunctSpecial = { guifg = colors.color7 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    TSRepeat = { guifg = colors.color5 },
    TSString = { guifg = colors.color2 },
    TSStringRegex = { guifg = colors.color7 }, -- For regexes.
    TSStringEscape = { guifg = colors.color6 }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariableBuiltin = { guifg = colors.color11 }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { guifg = colors.color6 },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- LspTrouble
    LspTroubleText = { guifg = colors.foreground },
    LspTroubleCount = { guifg = colors.color6, guibg = colors.foreground },
    LspTroubleNormal = { guifg = colors.foreground, guibg = colors.background },

    -- Illuminate
    illuminatedWord = { guibg = colors.foreground },
    illuminatedCurWord = { guibg = colors.foreground },

    -- diff
    diffAdded = { guifg = colors.color4 },
    diffRemoved = { guifg = colors.color11 },
    diffChanged = { guifg = colors.color5 },
    diffOldFile = { guifg = colors.color5 },
    diffNewFile = { guifg = colors.color5 },
    diffFile = { guifg = colors.color7 },
    diffLine = { guifg = colors.color1 },
    diffIndexLine = { guifg = colors.color6 },

   -- Neogit
    NeogitBranch = { guifg = colors.color6 },
    NeogitRemote = { guifg = colors.color6 },
    NeogitHunkHeader = { guibg = colors.background, guifg = colors.foreground },
    NeogitHunkHeaderHighlight = { guibg = colors.foreground, guifg = colors.color7 },
    NeogitDiffContextHighlight = { guibg = colors.background, guifg = colors.foreground },
    NeogitDiffDeleteHighlight = { guifg = colors.color11, guibg = colors.color11 },
    NeogitDiffAddHighlight = { guifg = colors.color4, guibg = colors.color4 },

    -- GitGutter
    GitGutterAdd = { guifg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { guifg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { guifg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { guifg = colors.color4 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { guifg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { guifg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { guifg = colors.color0, guibg = colors.background },
    TelescopeNormal = { guifg = colors.foreground, guibg = colors.background },
    TelescopeSelection = { guifg = colors.background, guibg = colors.color2 },

    -- Indent Blank Line
    IndentBlanklineChar = { guifg = colors.color0, guibg = colors.background },

    -- NvimTree
    NvimTreeNormal = { guifg = colors.foreground, guibg = colors.background },
    NvimTreeNormalNC = { guifg = colors.foreground, guibg = colors.background },
    NvimTreeRootFolder = { guifg = colors.color1 },
    NvimTreeGitDirty = { guifg = colors.color5 },
    NvimTreeGitNew = { guifg = colors.color4 },
    NvimTreeGitDeleted = { guifg = colors.color11 },
    NvimTreeSpecialFile = { guifg = colors.color6 },
    NvimTreeIndentMarker = { guifg = colors.color0 },
    NvimTreeImageFile = { guifg = colors.foreground },
    NvimTreeSymlink = { guifg = colors.color7 },
    NvimTreeFolderIcon = { guifg = colors.color2, guibg = colors.background },
    NvimTreeStatusLineNC = { guibg = colors.background, guifg = colors.background },

    -- LspSaga
    LspFloatWinNormal = { guibg = colors.background },
    LspFloatWinBorder = { guifg = colors.background },
    LspSagaBorderTitle = { guifg = colors.color7 },
    LspSagaHoverBorder = { guifg = colors.color7 },
    LspSagaRenameBorder = { guifg = colors.color4 },
    LspSagaDefPreviewBorder = { guifg = colors.color4 },
    LspSagaCodeActionBorder = { guifg = colors.color7 },
    LspSagaFinderSelection = { guifg = colors.color1 },
    LspSagaCodeActionTitle = { guifg = colors.color7 },
    LspSagaCodeActionContent = { guifg = colors.color6 },
    LspSagaSignatureHelpBorder = { guifg = colors.color11 },
    ReferencesCount = { guifg = colors.color6 },
    DefinitionCount = { guifg = colors.color6 },
    DefinitionIcon = { guifg = colors.color7 },
    ReferencesIcon = { guifg = colors.color7 },
    TargetWord = { guifg = colors.color7 },

    -- NeoVim
    healthError = { guifg = colors.color11 },
    healthSuccess = { guifg = colors.color4 },
    healthWarning = { guifg = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { guifg = colors.color2 },
    BufferLineFill = { guifg = colors.background, guibg = colors.background },
  }
end

return M
