vim.pack.add({
    -- Telescope
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-telescope/telescope-live-grep-args.nvim",
    "https://github.com/nvim-telescope/telescope-frecency.nvim",
    "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
    "https://github.com/FabianWirth/search.nvim",

    -- Lspconfig
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",

    -- Neorg
    "https://github.com/nvim-neorg/neorg",
    "https://github.com/pysan3/pathlib.nvim",
    "https://github.com/nvim-neorg/lua-utils.nvim",
    "https://github.com/nvim-neotest/nvim-nio",
    "https://github.com/nvim-neorg/neorg-telescope",
    "https://github.com/L3MON4D3/LuaSnip",
    "https://github.com/pysan3/neorg-templates",
    "https://github.com/bottd/neorg-worklog",

    -- CodeCompanion
    "https://github.com/ravitemer/codecompanion-history.nvim",
    "https://github.com/olimorris/codecompanion.nvim",

    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/tpope/vim-fugitive",
    "https://github.com/MeanderingProgrammer/render-markdown.nvim",
    "https://github.com/OXY2DEV/markview.nvim",
    "https://github.com/ojroques/nvim-bufdel",
    "https://github.com/lambdalisue/vim-suda",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/j-hui/fidget.nvim",
    "https://github.com/meatballs/vim-xonsh",
    "https://github.com/nvim-lualine/lualine.nvim",

    -- Colorscheme
    "https://github.com/vague2k/vague.nvim"
})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.current_chat_model = "qwen/qwen3-coder:free"


vim.o.guifont = "IosevkaTermSlab NF,Noto Color Emoji:h8"
vim.o.linespace = 0
vim.o.wrap = false
vim.o.number = true
vim.o.hlsearch = true
vim.o.expandtab = true
vim.o.wrap = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.clipboard = "unnamedplus"
vim.o.signcolumn = "yes"
vim.opt.equalalways = false
vim.o.colorcolumn = "80"
vim.o.undofile = true
vim.o.scrollback = 100000
vim.o.list = true
vim.opt.listchars = {
    tab = "» ", -- Tabs shown as a double right angle followed by a space
    trail = "•", -- Trailing spaces shown as a bullet
    space = "·", -- Normal spaces shown as a middle dot
    nbsp = "%" -- Non-breaking spaces shown as a percent sign
}


if vim.g.neovide then
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0
    vim.g.neovide_opacity = 0.5
    vim.g.neovide_floating_shadow = false
    vim.g.neovide_position_animation_length = 0
    vim.g.neovide_scroll_animation_length = 0
    vim.g.neovide_scroll_animation_far_lines = 0
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_cursor_short_animation_length = 0
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_cursor_vfx_mode = ""
end


require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
                'WinEnter',
                'BufEnter',
                'BufWritePost',
                'SessionLoadPost',
                'FileChangedShellPost',
                'VimResized',
                'Filetype',
                'CursorMoved',
                'CursorMovedI',
                'ModeChanged',
            },
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'lsp_status', 'fileformat', 'filetype' },
        lualine_y = { 'searchcount' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'lsp_status', 'fileformat', 'filetype' },
        lualine_y = { 'searchcount' },
        lualine_z = { 'location' }
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
})
require("vague").setup({
    transparent = true,
});
vim.cmd [[colorscheme vague]]

require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    ignore_install = { "ipkg" }, -- Failed to install.
    highlight = {
        enable = true,
    }
})


local language_servers = {
    "clangd",
    "lua_ls",
    "vimls",
    "powershell_es",
    "bashls",
    "pylsp",
    "gopls",
    "cmake",
    "docker_compose_language_service",
    "dockerls",
    "groovyls",
    "java_language_server",
    "jsonls",
    "templ",
    "yamlls",
}


require("mason").setup()
require("mason-lspconfig").setup({
    automatic_enable = language_servers,
    ensure_installed = language_servers,
})

vim.diagnostic.config({
    virtual_text = true
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format()
    end,
})

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.argc() == 0 and vim.fn.filereadable(vim.fn.expand('~/.config/nvim/session.vim')) == 1 then
            vim.cmd('source ~/.config/nvim/session.vim')
        end
    end,
});

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" } }
        }
    }
})

vim.api.nvim_create_autocmd("PackChanged", {
    pattern = "*",
    callback = function()
        vim.cmd [[ Neorg sync-parsers ]]
        vim.cmd [[ TSUpdate ]]
    end,
})

require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/notes",
                },
                default_workspace = "notes",
            },
        },
        ["core.integrations.telescope"] = {
            config = {
                insert_file_link = {
                    -- Whether to show the title preview in telescope. Affects performance with a large
                    -- number of files.
                    show_title_preview = true,
                },
            }
        },
        ["external.templates"] = {
            -- templates_dir = vim.fn.stdpath("config") .. "/templates/norg",
            -- default_subcommand = "add", -- or "fload", "load"
            -- keywords = { -- Add your own keywords.
            --   EXAMPLE_KEYWORD = function ()
            --     return require("luasnip").insert_node(1, "default text blah blah")
            --   end,
            -- },
            -- snippets_overwrite = {},
        },
        ["external.worklog"] = {
            -- default config
            config = {
                -- (Optional) Title for worklog in journal
                heading = "Worklog",
                -- (Optional) Title for "default" workspace
                default_workspace_title = "default"
            }
        },
    },
})


require("markview").setup({
    preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
    },
})

require("fidget").setup({})
require("search").setup({})

require("codecompanion").setup({
    opts = {
        language = "English",
    },
    strategies = {
        chat = {
            adapter = "openrouter",
            roles = {
                llm = function(adapter)
                    return "CodeCompanion (" .. adapter.formatted_name .. ")"
                end,
                user = "Me",
            },
            keymaps = {
                submit = {
                    modes = { n = "<CR>" },
                    description = "Submit",
                    callback = function(chat)
                        chat:apply_model(vim.g.current_chat_model)
                        chat:submit()
                    end,
                },
            },
        },
        inline = {
            adapter = "openrouter",
        },
    },
    adapters = {
        openrouter = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
                env = {
                    url = "https://openrouter.ai/api",
                    api_key = "CODE_COMPANION_KEY",
                    chat_url = "/v1/chat/completions",
                },
                schema = {
                    model = {
                        default = vim.g.current_chat_model,
                    },
                },
            })
        end,
    },
    display = {
        diff = {
            enabled = true,
            close_chat_at = 240,  -- Close an open chat buffer if the total columns of your display are less than...
            layout = "vertical",  -- vertical|horizontal split for default provider
            opts = { "internal", "filler", "closeoff", "algorithm:patience", "followwrap", "linematch:120" },
            provider = "default", -- default|mini_diff
        },
        chat = {
            window = {
                layout = "buffer", -- float|vertical|horizontal|buffer
                position = nil,
                border = "single",
                width = 0.25,
                relative = "editor",
                full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
            },
        },
    },
    extensions = {
        history = {
            enabled = true,
            opts = {
                -- Keymap to open history from chat buffer (default: gh)
                keymap = "gh",
                -- Automatically generate titles for new chats
                auto_generate_title = true,
                ---On exiting and entering neovim, loads the last chat on opening chat
                continue_last_chat = false,
                ---When chat is cleared with `gx` delete the chat from history
                delete_on_clearing_chat = false,
                -- Picker interface ("telescope", "snacks" or "default")
                picker = "telescope",
                ---Enable detailed logging for history extension
                enable_logging = false,
                ---Directory path to save the chats
                dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
                -- Save all chats by default
                auto_save = true,
                -- Keymap to save the current chat manually
                save_chat_keymap = "sc",
                -- Number of days after which chats are automatically deleted (0 to disable)
                expiration_days = 0,
            },
        },
    },
})

vim.keymap.set("n", "<leader>t", "<CMD>terminal<CR>a", { silent = true })
vim.keymap.set("n", "<leader>g", "<CMD>Gedit :<CR>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "dd", "\"_dd", { silent = true })

-- Telescope
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fa", "<CMD>Telescope live_grep search_dirs={'~/notes'}<CR>", { silent = true })

-- Neorg
vim.keymap.set("n", "<leader>qq", "<CMD>Neorg index<CR>", { silent = true })
vim.keymap.set("n", "<leader>qQ", "<CMD>Neorg journal today<CR>", { silent = true })

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n><C-w>h", { silent = true })
