require('mason-tool-installer').setup { ensure_installed = { 'intelephense' }}

require('lspconfig').intelephense.setup {
  settings = {
    intelephense = {
      tabwidth = 4,
      -- This way of activating intelephense does not work
      -- what works is creating $HOME_DIR/intelephense/licence.txt file
      licenseKey = os.getenv("INTELEPHENSE_LICENSE_KEY") or '',
    },
  },
  filetypes = {
    "php"
  }
}
