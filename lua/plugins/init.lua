return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup({
        autotag = {
          enable = true,
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
      })
    end,
    lazy = true,
    event = "VeryLazy",
  },


  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "astro-language-server", "angular-language-server", "apex-language-server", "arduino-languaje-server",
        "asm-lsp", "ast_grep", "autotools-language-server", "azure-pipelines-language-server",
        "bash-language-server", "c3-lsp", "circleci-yaml-language-server", "clang-format", "clangd",
        "cmake-language-server", "cobol-language-support", "colorgen-nvim", "copilot-language-server",
        "cpplint", "cpptools", "cql-language-server", "css-lsp", "css-variables-language-server",
        "cssmodules-language-server", "darker", "dart-debug-adapter", "django-template-lsp", "dockerfile-language-server",
        "dot-language-server", "graphql-language-service-cli", "html-lsp", "htmx-lsp", "jayvee-language-server",
        "jedi-language-server", "jinja-lsp", "js-debug-adapter", "json-lsp", "latexindent", "lean-language-server",
        "lua-language-server", "luau-lsp", "npm-groovy-lint", "opencl-language-server", "php-debug-adapter", "postgrestools",
        "powershell-editor-services", "prettier", "pretty-php", "pyre", "python-lsp-server", "remask-language-server",
        "rescript-language-server", "robotframework-lsp", "solang", "solidity", "solidity-ls", "sql-formatter", "stylua",
        "tailwindcss-language-server", "termux-language-server", "terraform-ls", "ts-standard", "tsp-server",
        "typescript-language-server", "unocss-language-server", "vim-language-server", "vscode-java-decompiler",
        "vscode-solidity-server", "vscode-spring-boot-tools", "vue-language-server", "yaml-language-server",
        "kolin-language-server", "jupytext", "ruby-lsp", "r-languageserver", "jsonnet-language-server", "flux-lsp",
      },
    },
  },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "angular", "apex", "arduino", "astro",  "bash", "blueprint", "bp",
  			"c", "c_sharp", "cmake", "cpp", "css", "csv", "cuda", "dart", "dockerfile",
        "fortran", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
        "graphql", "html", "htmldjango", "http", "java", "javascript", "jinja", "json",
        "kotlin", "llvm", "lua", "luadoc", "make", "markdown", "markdown_inline", "matlab",
        "ninja", "objc", "odin", "perl", "php", "printf", "prolog", "python", "query", "r",
        "rescript", "rust", "scheme", "solidity", "sql", "ssh_config", "superhtml", "tsx",
        "typescript", "vim", "vimdoc", "vue", "xml", "yaml",
      },
  	},
  },


  {
    "hkupty/iron.nvim",
    config = function()
      local iron = require("iron.core")
      iron.setup {
        config = {
          repl_definition = {
            python = {
              command = {"ipython"}
            },
          },
          repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
        },
        keymaps = {
          send_motion = "<leader>sc",
          visual_send = "<leader>sc",
          send_file = "<leader>sf",
          send_line = "<leader>sl",
          send_mark = "<leader>sm",
          mark_motion = "<leader>mc",
          mark_visual = "<leader>mc",
          remove_mark = "<leader>md",
          cr = "<leader>s<cr>",
          interrupt = "<leader>s<space>",
          exit = "<leader>sq",
          clear = "<leader>cl",
        },
        highlight = {
          italic = true
        },
        ignore_blank_lines = true,
      }
    end,
    event = "VeryLazy",
  },
}
