-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])
return require("packer").startup(
    function()

        -- main - puglin manager
        use {"wbthomason/packer.nvim", opt = true}

       -- some plugins here in the middle...

        ----------------------------=== Luarocks ===--------------------------
            use_rocks 'effil'    -- the rock I need
    end
)
