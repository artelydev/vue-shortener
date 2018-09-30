# :lollipop: Vue URL Shortener

What I'm gonna use:

* [Vue](https://github.com/vuejs/vue)

* [Webpack](https://github.com/webpack/webpack) for bundling & developing

* [Pug](https://github.com/pugjs/pug) template engine

* [vue-cli](https://github.com/vuejs/vue-cli)

* My [vue-cli-plugin-coffee](https://github.com/cxsper/vue-cli-plugin-coffee) to support [CoffeeScript2](https://github.com/jashkenas/coffeescript)

* [vue-loader](https://github.com/vuejs/vue-loader) for loading `.vue` components

* My [vue-cli-plugin-sugarss](https://github.com/cxsper/vue-cli-plugin-sugarss) to support [SugarSS](https://github.com/postcss/sugarss) linting

* [Stylus](https://github.com/stylus/stylus) CSS Preprocessor

* [PostCSS](https://github.com/postcss/postcss) for `lint`ing and `autoprefix`ing mostly

* [Babel](https://github.com/babel/babel)

* [express](https://github.com/expressjs/express) for static serving

* [Heroku](https://heroku.com) for delpoyment

----

## Development

```shell
$ npm run serve
```

---

## Project Structure

### `public`
Static files.

### `src/api`
API module for `count`ing, `store`ing and `get`ing `Links`.

### `src/components`
This one serves as the VueJS `components'` storage. Usually `src/components/`.sample contains `.vue` files with:
* a logic written in `script[lang=coffee]`;
* a template written in `template[lang=pug]`;
* styles written in `style[lang=stylus][scoped]`;

### `src/utils/base62.coffee`
`base62` number encoder.

### `src/utils/variables.sss`
`Stylus/SugarSS` variables.

### `src/App.vue`
`Vue` instance.

### `src/main.js`
Entry point.

---

:tada:
