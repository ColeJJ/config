-- involve lsp installer plugin
require("lsp.lsp-installer")

-- integrate lsp saga
require("lsp.lspsaga")

--local variable for lspconfig
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then
    return
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap = true, silent = true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

    -- formatting -> auto format on save
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)
--Enable (broadcasting) snippet capability for completion
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- languages
nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.tailwindcss.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- eslint and prettier
nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = { 'lua', 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss',
        'pandoc' },
    init_options = {
        linters = {
            eslint = {
                command = 'eslint_d',
                rootPatterns = { '.git' },
                debounce = 100,
                args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
                sourceName = 'eslint_d',
                parseJson = {
                    errorsRoot = '[0].messages',
                    line = 'line',
                    column = 'column',
                    endLine = 'endLine',
                    endColumn = 'endColumn',
                    message = '[eslint] ${message} [${ruleId}]',
                    security = 'severity'
                },
                securities = {
                    [2] = 'error',
                    [1] = 'warning'
                }
            },
        },
        filetypes = {
            javascript = 'eslint',
            javascriptreact = 'eslint',
            typescript = 'eslint',
            typescriptreact = 'eslint',
        },
        formatters = {
            eslint_d = {
                command = 'eslint_d',
                rootPatterns = { '.git' },
                args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
                rootPatterns = { '.git' },
            },
            prettier = {
                command = 'prettier_d_slim',
                rootPatterns = { '.git' },
                -- requiredFiles: { 'prettier.config.js' },
                args = { '--stdin', '--stdin-filepath', '%filename' }
            }
        },
        formatFiletypes = {
            lua = 'prettier',
            css = 'prettier',
            javascript = 'prettier',
            javascriptreact = 'prettier',
            json = 'prettier',
            scss = 'prettier',
            less = 'prettier',
            typescript = 'prettier',
            typescriptreact = 'prettier',
        }
    }
}

-- emmet
nvim_lsp.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html' },
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
            },
        },
    }
})
