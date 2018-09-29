// vue.config.js
module.exports = {
  chainWebpack: config => {
    config.module
      .rule('coffee')
      .test(/\.coffee$/)
      .use('coffee-loader')
        .loader('coffee-loader');
  }
}
