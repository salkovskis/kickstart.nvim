require('mason-tool-installer').setup { ensure_installed = { 'intelephense' }}

require('lspconfig').intelephense.setup {
  settings = {
    tabwidth = 4,
    linenseKey = os.getenv("INTELEPHENSE_LICENSE_KEY") or '',
  }
}

