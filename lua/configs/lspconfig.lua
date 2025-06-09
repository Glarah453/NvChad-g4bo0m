require("nvchad.configs.lspconfig").defaults()

local servers = { "astro-language-server", "angular-language-server", "apex-language-server", "arduino-languaje-server",
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
        "kolin-language-server", "jupytext", "ruby-lsp", "r-languageserver", "jsonnet-language-server", "flux-lsp", }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
