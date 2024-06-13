vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set incsearch")
vim.cmd("set expandtab")

vim.cmd("set mouse+=a")

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.termguicolors = true
vim.opt.wrap = false

--为指定语言设置缩进
vim.cmd("autocmd FileType javascript setlocal et sta sw=2 sts=2")
vim.cmd("autocmd FileType lua setlocal et sta sw=2 sts=2")

