local vue_ls_bin = vim.fn.exepath("vue-language-server")
assert(vue_ls_bin ~= "", "vue-language-server not found in PATH")

local vue_ls_entry = vim.uv.fs_realpath(vue_ls_bin) or vue_ls_bin
local vue_ls_root = vim.fs.dirname(vim.fs.dirname(vue_ls_entry))

---@type vim.lsp.Config
return {
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vue_ls_root,
                languages = { "vue" },
                configNamespace = "typescript",
            },
        },
    },
    filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
    },
}
