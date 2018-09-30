const {DefinePlugin} = require('webpack');

module.exports = {
  configureWebpack: [
    plugins: [
      new DefinePlugin({
        'process.env': {
          NODE_ENV: JSON.stringify('production'),
          APP_URL: JSON.stringify(process.env.APP_URL)
        }
      })
    ]
  ]
}
