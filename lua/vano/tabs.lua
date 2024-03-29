local opt = vim.opt
--[[ Настройка табов ]]--
-- Установка количества пробельных символов, когда сдвигаем с помощью "<", ">"
-- По сути не смотря на expandtab в терминале все равно отображаются пробельные символы, поэтому установим их количество на одно нажатие этих кнопок
opt.shiftwidth=2

-- 1 таб == 2 пробела c новой строки
-- При нажатии <CR> будут вставлять табы. Табы рисуются как пробелы. Именно поэтому мы должны установить что каждый таб в новой строке - 2 пробела
opt.tabstop=2

-- Подстраивать новые строки под предыдущий отступ
opt.smartindent=true

opt.autoindent = true
opt.expandtab = true

opt.nu = true
opt.relativenumber = true
opt.incsearch = true

opt.shell = "/usr/bin/fish"

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.colorcolumn = "80"
