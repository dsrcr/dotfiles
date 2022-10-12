vim.cmd [[
    try
        colorscheme gruvbox 
        highlight Normal guibg=None ctermbg=None
        highlight SignColumn guibg=None ctermbg=None
        highlight Cmdline ctermbg=None guibg=None
        highlight TabLine ctermbg=None guibg=None
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme gruvbox
        set background=dark
    endtry
]]
