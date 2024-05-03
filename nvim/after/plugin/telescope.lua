local builtin = require('telescope.builtin')

require('telescope').setup{
    defaults ={
        layout_strategy = 'vertical',
    },
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
