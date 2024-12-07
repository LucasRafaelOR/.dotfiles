return {
  'mbbill/undotree',
  cmd = 'UndotreeToggle',
  keys = {
    { '<leader>ut', ':UndotreeToggle<CR>', desc = 'Toggle [U]ndo [T]ree' },
  },
  init = function()
    local undodir = vim.fn.expand '~/.undo-nvim'

    if vim.fn.has 'persistent_undo' == 1 then
      if vim.fn.isdirectory(undodir) == 0 then
        os.execute('mkdir -p ' .. undodir)
      end

      vim.opt.undodir = undodir
      vim.opt.undofile = true
    end

    vim.g.undotree_WindowLayout = 2
  end,
}
