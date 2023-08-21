vim.g.everforest_diagnostic_line_highlight = 1
vim.cmd('colorscheme everforest')

vim.fn.sign_define('DiagnosticSignError', {
    text = 'E',
    texthl = 'DiagnosticSignError',
    linehl = 'ErrorLine'
})

vim.fn.sign_define('DiagnosticSignWarn', {
    text = 'W',
    texthl = 'DiagnosticSignWarn',
    linehl = 'WarningLine'
})

vim.fn.sign_define('DiagnosticSignInfo', {
    text = 'I',
    texthl = 'DiagnosticSignInfo',
    linehl = 'InfoLine'
})

vim.fn.sign_define('DiagnosticSignHint', {
    text = 'H',
    texthl = 'DiagnosticSignHint',
    linehl = 'HintLine'
})

