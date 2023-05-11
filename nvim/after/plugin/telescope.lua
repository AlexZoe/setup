local builtin = require('telescope.builtin')

require('telescope').setup{
    defaults ={
        path_display ={
            'smart',
            ['truncate'] = 5,
        },
    },
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
