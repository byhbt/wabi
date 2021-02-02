const { environment } = require('@rails/webpacker')
const webpack = require('webpack');

const plugins = [
  new webpack.ProvidePlugin({
    // Translations
    I18n: 'i18n-js',
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
];

environment.config.set('plugins', plugins);

module.exports = environment
