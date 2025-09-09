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
    "https://github.com/nvimtools/none-ls.nvim",
    "https://github.com/jay-babu/mason-null-ls.nvim",

    -- CodeCompanion
    { src = "https://github.com/olimorris/codecompanion.nvim",     version = "main" },
    "https://github.com/ravitemer/codecompanion-history.nvim",
    "https://github.com/franco-ruggeri/codecompanion-spinner.nvim",
    "https://github.com/franco-ruggeri/codecompanion-lualine.nvim",
    "https://github.com/e2r2fx/codecompanion-fast-apply.nvim.git",
    { src = "https://github.com/Kraust/codecompanion-gitlab.nvim", version = "main" },

    -- Treesitter.
    { src = "https://github.com/nvim-treesitter/nvim-treesitter",  version = "master" },
    "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
    "https://github.com/nvim-treesitter/nvim-treesitter-context",

    "https://github.com/tpope/vim-fugitive",
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
    "https://github.com/alex-popov-tech/store.nvim",
    {
        src = "/home/kraust/git/gitlab.vim",
        version = "145-support-duo-workflow-in-neovim-using-browser",
    },
    "https://github.com/ravitemer/mcphub.nvim",
    "https://github.com/fei6409/log-highlight.nvim",

    -- Colorscheme
    "https://github.com/vague2k/vague.nvim",
    "https://github.com/scottmckendry/cyberdream.nvim",
    "https://github.com/Koalhack/darcubox-nvim",
    "https://github.com/zootedb0t/citruszest.nvim",
})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


--vim.o.guifont = "IosevkaTermSlab NF,Noto Color Emoji:h12"
vim.o.guifont = "Hack Nerd Font,Noto Color Emoji:h10"
vim.o.termguicolors = true
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
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.scrollback = 100000
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.shortmess:append "c"
vim.opt.foldlevel = 99
vim.o.list = true
vim.o.showmode = false
vim.o.showcmd = false
vim.opt.listchars = {
    tab = "» ",
    trail = "•",
    space = "·",
    nbsp = "%"
}
vim.opt.fillchars = {
    vert = ' ',
    eob = ' ',
}

if vim.g.neovide then
    vim.o.guifont = "Hack Nerd Font,Noto Color Emoji:h8"

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
else
    vim.o.guifont = "Hack Nerd Font,Noto Color Emoji:h10"
end

vim.o.winhighlight = ""

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
    colors = {
        bg = "#141415",
        inactiveBg = "#1c1c24",
        fg = "#ffb3ba",
        floatBorder = "#878787",
        line = "#3a3545",
        comment = "#5f756a",
        builtin = "#4dd4a8",
        func = "#c48282",
        string = "#ff7a85",
        number = "#2b7fff",
        property = "#b8a3ff",
        constant = "#9d8fff",
        parameter = "#d478d4",
        visual = "#333738",
        error = "#d8647e",
        warning = "#4da6ff",
        hint = "#5c8aff",
        operator = "#90a0b5",
        keyword = "#4a8aff",
        type = "#5cb4d4",
        search = "#405065",
        plus = "#5dd442",
        delta = "#4da6ff",
    },
})
vim.cmd [[colorscheme vague]]

require("nvim-treesitter.configs").setup({
    ensure_installed = {},
    ignore_install = { "ipkg" },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
    },
    indent = {
        enable = true
    },
    textobjects = {
        select = {
            enable = true,
        }
    }
})

require("treesitter-context").setup({
    enable = true,
})

local language_servers = {
    "clangd",
    "lua_ls",
    "vimls",
    "powershell_es",
    "bashls",
    "pylsp",
    "gopls",
    "neocmake",
    "docker_compose_language_service",
    "dockerls",
    "jsonls",
    "marksman",
    "templ",
    "yamlls",
    "html",
    "denols",
}


require("mason").setup()
require("mason-lspconfig").setup({
    automatic_enable = language_servers,
    ensure_installed = language_servers,
})
require("mason-null-ls").setup({
    ensure_installed = {
        "shfmt",
    },
})


local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.shfmt,
    }
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
    callback = function(ev)
        vim.notify(ev.data.spec.name .. " has been updated.")
        if ev.data.spec.name == "nvim-treesitter"
            and ev.data.spec.kind ~= "deleted" then
            vim.cmd [[ TSUpdate ]]
        end
        if ev.data.spec.name == "mcphub.nvim"
            and ev.data.spec.kind ~= "deleted" then
            vim.cmd('!npm install -g mcp-hub@latest')
        end
    end,
})

require("markview").setup({
    preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
    },
})

require("fidget").setup({})
require("search").setup({})
require("oil").setup({})

require("codecompanion").setup({
    opts = {
        language = "English",
        log_level = "INFO",
    },
    strategies = {
        chat = {
            adapter = "gitlab_duo",
            roles = {
                llm = function(adapter)
                    return "CodeCompanion (" .. adapter.formatted_name .. ")"
                end,
                user = "Kraust",
            },
            keymaps = {
                submit = {
                    modes = { n = "<CR>" },
                    description = "Submit",
                    callback = function(chat)
                        chat:submit()
                    end,
                },
            },
            features = {
                tokens = false,
            }
        },
        inline = {
            adapter = "gitlab_duo",
        },
        cmd = {
            adapter = "gitlab_duo",
        }
    },
    adapters = {
        http = {
            opts = {
                show_defaults = false,
            },
            gitlab_duo = function()
                return require("codecompanion-gitlab.adapters.gitlab_duo")
            end,
            llama_cpp = function()
                return require("codecompanion.adapters").extend("openai_compatible", {
                    name = "llamacpp",
                    opts = {
                        vision = true,
                        stream = true,
                    },
                })
            end,
        },
        acp = {
            opts = {
                show_defaults = false,
            },
        }
    },
    display = {
        diff = {
            enabled = true,
            layout = "horizontal",
        },
        chat = {
            window = {
                layout = "buffer",
            },
        },
    },
    extensions = {
        history = {
            enabled = true,
        },
        fast_apply = {
            enabled = true,
            opts = {
                adapter = "gitlab_duo",
            },
        },
        mcphub = {
            callback = "mcphub.extensions.codecompanion",
            opts = {
                make_vars = true,
                make_slash_commands = true,
                show_result_in_chat = true,
            },
        },
    },
})

require("project_nvim").setup({
    show_hidden = true,
    silent_chdir = true,
    scope_chdir = 'win',
})

vim.diagnostic.config({
    virtual_text = false
})

require("tiny-inline-diagnostic").setup({
    preset = "simple",

    transparent_bg = false,
    transparent_cursorline = false,
    options = {
        show_source = {
            enabled = false,
            if_many = false,
        },
        use_icons_from_diagnostic = true,
        set_arrow_to_diag_color = false,
        add_messages = true,
        multilines = {
            enabled = true,
            always_show = true,
            trim_whitespaces = false,
            tabstop = 4,
        },
        overflow = {
            mode = "wrap",
            padding = 0,
        },
    },
})

require('gitlab').setup({
    duo_workflow = {
        enabled = true,
    },
    statusline = {
        enabled = true
    },
    code_suggestions = {
        lsp_binary_path = 'node',
        ghost_text = {
            enabled = true,
            toggle_enabled = nil,
            accept_suggestion = "<leader><Tab>",
            clear_suggestions = "<leader><S-Tab>",
            stream = false,
        },
    },
    language_server = {
        workspace_settings = {
            codeCompletion = {
                enableSecretRedaction = true,
            },
            telemetry = {
                enabled = false,
                trackingUrl = nil,
            },
        },
    },
})


-- Setup completion plugin with custom configuration
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

require("mcphub").setup({})


require("log-highlight").setup({})


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
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files search_dirs={'~/'}<CR>", { silent = true })
vim.keymap.set("n", "dd", "\"_dd", { silent = true })
vim.keymap.set("n", "<leader>s", "<CMD>source ~/.config/nvim/session.vim<CR>", { silent = true })
vim.keymap.set("n", "<leader>c", "<CMD>CodeCompanionChat<CR>", { silent = true })
vim.keymap.set("n", "<leader>v", "<CMD>let @+ = expand('%:p')<CR>", { silent = true })
vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { silent = true })

-- Telescope
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fa", "<CMD>Telescope live_grep search_dirs={'~/notes'}<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", "<CMD>e /mnt/storage/notes/index.md<CR>", { silent = true })
vim.keymap.set("n", "<leader>Q", "<CMD>e /mnt/storage/notes/scratch.md<CR>", { silent = true })

-- Autocmds.
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "en_us"
    end,
})
