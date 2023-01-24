local p = require('everblush.palette')

local everblush = {
    normal = {
        left = { { p.background, p.color6, 'bold' }, { p.foreground, p.background } },
        right = { { p.background, p.color6 }, { p.foreground, p.background } },
        middle = { { p.foreground, p.background } },
        error = { { p.background, p.color5 } },
        warning = { { p.background, p.color3 } },
    },
    inactive = {
        right = { { p.background, p.background }, { p.background, p.background } },
        left =  { { p.background, p.background }, { p.background, p.background } },
        middle = { { p.background, p.background } },
    },
    insert = {
        left = { { p.background, p.color2, 'bold' }, { p.foreground, p.background } },
        right = { { p.background, p.color2 }, { p.foreground, p.background } },
        middle = { { p.foreground, p.background } },
    },
    replace = {
        left = { { p.background, p.color1, 'bold' }, { p.foreground, p.background } },
        right = { { p.background, p.color1 }, { p.foreground, p.background } },
        middle = { { p.foreground, p.background } },
    },
    visual = {
        left = { { p.background, p.color3, 'bold' }, { p.background, p.background } },
        right = { { p.background, p.color3 }, { p.background, p.background } },
        middle = { { p.foreground, p.background } },
    },
    tabline = {
        left = { { p.foreground, p.background } },
        tabsel = { { p.background, p.foreground } },
        middle = { { p.background, p.background } },
        right = { { p.background, p.color5 } },
    },
}

return everblush
