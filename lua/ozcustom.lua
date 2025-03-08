vim.api.nvim_create_user_command('CopyFilePath',function()
    local fullPath = vim.api.nvim_buf_get_name(0)
    vim.fn.setreg('+', fullPath)
end,{})

vim.api.nvim_create_user_command('CopyFileName',function()
    local fullPath = vim.api.nvim_buf_get_name(0)
    local fileName = vim.fs.basename(fullPath)
    vim.fn.setreg('+',fileName)
end,{})

local opt = vim.opt
-- line number
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

-- tab
opt.shiftwidth = 4
opt.expandtab = true
opt.laststatus = 3 -- global statusline
opt.showmode = false
opt.colorcolumn = "110"

--misc
opt.smartindent = true
opt.wrap = true
opt.swapfile = false
opt.backup = false
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.scrolloff = 8
opt.signcolumn = "no"
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 400
opt.undofile = true

-- search
opt.hlsearch = false
opt.incsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Indenting
opt.fillchars = { eob = " " }
opt.mouse = "a"

-- Numbers
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
