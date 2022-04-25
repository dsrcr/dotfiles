-- ________     _________                        _____ .__    ____
-- \______ \   /   _____/  ____   ____    ____ _/ ____\|__|  / ___\
--  |    |  \  \_____  \ _/ ___\ /  _ \  /    \\   __\ |  | / /_/  >
--  |    `   \ /        \\  \___(  <_> )|   |  \|  |   |  | \___  /
-- /_______  //_______  / \___  >\____/ |___|  /|__|   |__|/_____/
--         \/         \/      \/             \/
-- Initial neovim configuration file
-- My config is divided to 3 modules (UI, Functions, Language)
-- Each module has its own configuration files
-- 100% LUA
-- https://github.com/dsorcererdev/dotfiles

-- UI
-- This module stands for user interface
-- Here you can configure basic vim settings, vim welcome page, etc.
require "ui.options"
require "ui.colorscheme"
require "ui.gitsigns"
require "ui.nvim-tree"
require "ui.bufferline"
require "ui.lualine"
require "ui.indentline"
require "ui.alpha"
require "ui.whichkey"

-- Functions
-- This module is responsible for plugin management, vim commands, comment engine, custom keymaps, etc.
require "functions.plugins"
require "functions.keymaps"
require "functions.telescope"
require "functions.autopairs"
require "functions.comment"
require "functions.toggleterm"
require "functions.project"
require "functions.impatient"
require "functions.autocommands"

-- Language
-- You can set up here stuff like custom LSP server settings, treesitters and autocompletions
require "language.cmp"
require "language.lsp"
require "language.treesitter"
