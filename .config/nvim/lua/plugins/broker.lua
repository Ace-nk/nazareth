return {
  'phanen/broker.nvim',
  event = 'ColorScheme',
  init = function() require('broker.entry').init() end,
}
