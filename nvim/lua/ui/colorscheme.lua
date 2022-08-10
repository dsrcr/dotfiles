vim.cmd [[
    try
        colorscheme tokyonight 
        highlight Normal guibg=None ctermbg=None
        highlight SignColumn guibg=None ctermbg=None
        highlight Cmdline ctermbg=None guibg=None
        highlight TabLine ctermbg=None guibg=None
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default
        set background=dark
    endtry
]]
