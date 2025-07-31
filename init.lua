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
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/ahmedkhalf/project.nvim",
    "https://github.com/rachartier/tiny-inline-diagnostic.nvim",
    "https://github.com/brianaung/compl.nvim",

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
vim.o.swapfile = false
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
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.shortmess:append "c"
vim.o.list = true
vim.opt.listchars = {
    tab = "» ", -- Tabs shown as a double right angle followed by a space
    trail = "•", -- Trailing spaces shown as a bullet
    space = "·", -- Normal spaces shown as a middle dot
    nbsp = "%" -- Non-breaking spaces shown as a percent sign
}


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

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format()
    end,
})

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    end,
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" } }
        }
    }
})

local function compile_commands_dir(root_dir)
    local uname = vim.loop.os_uname()
    if uname == "Windows_NT" then
        return root_dir .. "/build-Win10-x64-RelWithDebInfo"
    end
    return root_dir .. "/build-linux-x86_64-RelWithDebInfo"
end

vim.lsp.config("clangd", {
    cmd = function(dispatchers, config)
        return vim.lsp.rpc.start(
            {
                "clangd",
                "--compile-commands-dir=" .. compile_commands_dir(config.root_dir),
            },
            dispatchers
        )
    end,
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

require("fidget").setup({
    -- Options related to LSP progress subsystem
    progress = {
        poll_rate = 0,                -- How and when to poll for progress messages
        suppress_on_insert = false,   -- Suppress new messages while in insert mode
        ignore_done_already = false,  -- Ignore new tasks that are already complete
        ignore_empty_message = false, -- Ignore new tasks that don't contain a message
        clear_on_detach =             -- Clear notification group when LSP server detaches
            function(client_id)
                local client = vim.lsp.get_client_by_id(client_id)
                return client and client.name or nil
            end,
        notification_group = -- How to get a progress message's notification group key
            function(msg) return msg.lsp_client.name end,
        ignore = {},         -- List of LSP servers to ignore

        -- Options related to how LSP progress messages are displayed as notifications
        display = {
            render_limit = 16, -- How many LSP messages to show at once
            done_ttl = 3, -- How long a message should persist after completion
            done_icon = "✔", -- Icon shown when all LSP progress tasks are complete
            done_style = "Constant", -- Highlight group for completed LSP tasks
            progress_ttl = math.huge, -- How long a message should persist when in progress
            progress_icon = -- Icon shown when LSP progress tasks are in progress
            { "dots" },
            progress_style = -- Highlight group for in-progress LSP tasks
            "WarningMsg",
            group_style = "Title", -- Highlight group for group name (LSP server name)
            icon_style = "Question", -- Highlight group for group icons
            priority = 30, -- Ordering priority for LSP notification group
            skip_history = true, -- Whether progress notifications should be omitted from history
            format_message = -- How to format a progress message
                require("fidget.progress.display").default_format_message,
            format_annote = -- How to format a progress annotation
                function(msg) return msg.title end,
            format_group_name = -- How to format a progress notification group's name
                function(group) return tostring(group) end,
            overrides = { -- Override options from the default notification config
                rust_analyzer = { name = "rust-analyzer" },
            },
        },

        -- Options related to Neovim's built-in LSP client
        lsp = {
            progress_ringbuf_size = 0, -- Configure the nvim's LSP progress ring buffer size
            log_handler = false,       -- Log `$/progress` handler invocations (for debugging)
        },
    },

    -- Options related to notification subsystem
    notification = {
        poll_rate = 10,               -- How frequently to update and render notifications
        filter = vim.log.levels.INFO, -- Minimum notifications level
        history_size = 128,           -- Number of removed messages to retain in history
        override_vim_notify = true,   -- Automatically override vim.notify() with Fidget
        configs =                     -- How to configure notification groups when instantiated
        { default = require("fidget.notification").default_config },
        redirect =                    -- Conditionally redirect notifications to another backend
            function(msg, level, opts)
                if opts and opts.on_open then
                    return require("fidget.integration.nvim-notify").delegate(msg, level, opts)
                end
            end,

        -- Options related to how notifications are rendered as text
        view = {
            stack_upwards = true,    -- Display notification items from bottom to top
            icon_separator = " ",    -- Separator between group name and icon
            group_separator = "---", -- Separator between notification groups
            group_separator_hl =     -- Highlight group used for group separator
            "Comment",
            render_message =         -- How to render notification messages
                function(msg, cnt)
                    return cnt == 1 and msg or string.format("(%dx) %s", cnt, msg)
                end,
        },

        -- Options related to the notification window and buffer
        window = {
            normal_hl = "Comment", -- Base highlight group in the notification window
            winblend = 100,        -- Background color opacity in the notification window
            border = "none",       -- Border around the notification window
            zindex = 45,           -- Stacking priority of the notification window
            max_width = 0,         -- Maximum width of the notification window
            max_height = 0,        -- Maximum height of the notification window
            x_padding = 1,         -- Padding from right edge of window boundary
            y_padding = 0,         -- Padding from bottom edge of window boundary
            align = "bottom",      -- How to align the notification window
            relative = "editor",   -- What the notification window position is relative to
        },
    },

    -- Options related to integrating with other plugins
    integration = {
        ["nvim-tree"] = {
            enable = true, -- Integrate with nvim-tree/nvim-tree.lua (if installed)
        },
        ["xcodebuild-nvim"] = {
            enable = true, -- Integrate with wojciech-kulik/xcodebuild.nvim (if installed)
        },
    },

    -- Options related to logging
    logger = {
        level = vim.log.levels.WARN, -- Minimum logging level
        max_size = 10000,            -- Maximum log file size, in KB
        float_precision = 0.01,      -- Limit the number of decimals displayed for floats
        path =                       -- Where Fidget writes its logs to
            string.format("%s/fidget.nvim.log", vim.fn.stdpath("cache")),
    },
})

require("search").setup({})
require("oil").setup({})

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

require("project_nvim").setup({
    -- Manual mode doesn't automatically change your root directory, so you have
    -- the option to manually do so using `:ProjectRoot` command.
    manual_mode = false,

    -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    -- order matters: if one is not detected, the other is used as fallback. You
    -- can also delete or rearangne the detection methods.
    detection_methods = { "lsp", "pattern" },

    -- All the patterns used to detect root dir, when **"pattern"** is in
    -- detection_methods
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

    -- Table of lsp clients to ignore by name
    -- eg: { "efm", ... }
    ignore_lsp = {},

    -- Don't calculate root dir on specific directories
    -- Ex: { "~/.cargo/*", ... }
    exclude_dirs = {},

    -- Show hidden files in telescope
    show_hidden = true,

    -- When set to false, you will get a message when project.nvim changes your
    -- directory.
    silent_chdir = true,

    -- What scope to change the directory, valid options are
    -- * global (default)
    -- * tab
    -- * win
    scope_chdir = 'win',

    -- Path where project.nvim will store the project history for use in
    -- telescope
    datapath = vim.fn.stdpath("data"),
})

require("tiny-inline-diagnostic").setup({
    -- Style preset for diagnostic messages
    -- Available options:
    -- "modern", "classic", "minimal", "powerline",
    -- "ghost", "simple", "nonerdfont", "amongus"
    preset = "simple",

    transparent_bg = true,         -- Set the background of the diagnostic to transparent
    transparent_cursorline = true, -- Set the background of the cursorline to transparent (only one the first diagnostic)

    hi = {
        error = "DiagnosticError", -- Highlight group for error messages
        warn = "DiagnosticWarn",   -- Highlight group for warning messages
        info = "DiagnosticInfo",   -- Highlight group for informational messages
        hint = "DiagnosticHint",   -- Highlight group for hint or suggestion messages
        arrow = "NonText",         -- Highlight group for diagnostic arrows

        -- Background color for diagnostics
        -- Can be a highlight group or a hexadecimal color (#RRGGBB)
        background = "CursorLine",

        -- Color blending option for the diagnostic background
        -- Use "None" or a hexadecimal color (#RRGGBB) to blend with another color
        mixing_color = "None",
    },

    options = {
        -- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
        show_source = {
            enabled = false,
            if_many = false,
        },

        -- Use icons defined in the diagnostic configuration
        use_icons_from_diagnostic = true,

        -- Set the arrow icon to the same color as the first diagnostic severity
        set_arrow_to_diag_color = false,

        -- Add messages to diagnostics when multiline diagnostics are enabled
        -- If set to false, only signs will be displayed
        add_messages = true,

        -- Time (in milliseconds) to throttle updates while moving the cursor
        -- Increase this value for better performance if your computer is slow
        -- or set to 0 for immediate updates and better visual
        throttle = 20,

        -- Minimum message length before wrapping to a new line
        softwrap = 30,

        -- Configuration for multiline diagnostics
        -- Can either be a boolean or a table with the following options:
        --  multilines = {
        --      enabled = false,
        --      always_show = false,
        -- }
        -- If it set as true, it will enable the feature with this options:
        --  multilines = {
        --      enabled = true,
        --      always_show = false,
        -- }
        multilines = {
            -- Enable multiline diagnostic messages
            enabled = true,

            -- Always show messages on all lines for multiline diagnostics
            always_show = true,

            -- Trim whitespaces from the start/end of each line
            trim_whitespaces = true,

            -- Replace tabs with spaces in multiline diagnostics
            tabstop = 4,
        },

        -- Display all diagnostic messages on the cursor line
        show_all_diags_on_cursorline = false,

        -- Enable diagnostics in Insert mode
        -- If enabled, it is better to set the `throttle` option to 0 to avoid visual artifacts
        enable_on_insert = false,

        -- Enable diagnostics in Select mode (e.g when auto inserting with Blink)
        enable_on_select = false,

        overflow = {
            -- Manage how diagnostic messages handle overflow
            -- Options:
            -- "wrap" - Split long messages into multiple lines
            -- "none" - Do not truncate messages
            -- "oneline" - Keep the message on a single line, even if it's long
            mode = "wrap",

            -- Trigger wrapping to occur this many characters earlier when mode == "wrap".
            -- Increase this value appropriately if you notice that the last few characters
            -- of wrapped diagnostics are sometimes obscured.
            padding = 0,
        },

        -- Configuration for breaking long messages into separate lines
        break_line = {
            -- Enable the feature to break messages after a specific length
            enabled = false,

            -- Number of characters after which to break the line
            after = 30,
        },

        -- Custom format function for diagnostic messages
        -- Example:
        -- format = function(diagnostic)
        --     return diagnostic.message .. " [" .. diagnostic.source .. "]"
        -- end
        format = nil,


        virt_texts = {
            -- Priority for virtual text display
            priority = 2048,
        },

        -- Filter diagnostics by severity
        -- Available severities:
        -- vim.diagnostic.severity.ERROR
        -- vim.diagnostic.severity.WARN
        -- vim.diagnostic.severity.INFO
        -- vim.diagnostic.severity.HINT
        severity = {
            vim.diagnostic.severity.ERROR,
            vim.diagnostic.severity.WARN,
            vim.diagnostic.severity.INFO,
            vim.diagnostic.severity.HINT,
        },

        -- Events to attach diagnostics to buffers
        -- You should not change this unless the plugin does not work with your configuration
        overwrite_events = nil,
    },
    disabled_ft = {} -- List of filetypes to disable the plugin
})

require("compl").setup({
    completion = {
        fuzzy = false,
        timeout = 100,
    },
    info = {
        enable = true,
        timeout = 100,
    },
    snippet = {
        enable = false,
        paths = {},
    }
})


vim.keymap.set("i", "<CR>", function()
    if vim.fn.complete_info()["selected"] ~= -1 then return "<C-y>" end
    if vim.fn.pumvisible() ~= 0 then return "<C-e><CR>" end
    return "<CR>"
end, { expr = true })

vim.keymap.set("i", "<Tab>", function()
    if vim.fn.pumvisible() ~= 0 then return "<C-n>" end
    return "<Tab>"
end, { expr = true })

vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn.pumvisible() ~= 0 then return "<C-p>" end
    return "<S-Tab>"
end, { expr = true })

vim.keymap.set("n", "<leader>t", "<CMD>terminal<CR>", { silent = true })
vim.keymap.set("n", "<leader>g", "<CMD>Gedit :<CR>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "dd", "\"_dd", { silent = true })
vim.keymap.set("n", "<leader>s", "<CMD>source ~/.config/nvim/session.vim<CR>", { silent = true })

-- Telescope
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fa", "<CMD>Telescope live_grep search_dirs={'~/notes'}<CR>", { silent = true })

-- Neorg
vim.keymap.set("n", "<leader>qq", "<CMD>Neorg index<CR>", { silent = true })
vim.keymap.set("n", "<leader>qQ", "<CMD>Neorg journal today<CR>", { silent = true })

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { silent = true })
