<template>
  <div id="app">
    <Shortener/>
    <Sticker image="https://upload.wikimedia.org/wikipedia/commons/f/f1/Vue.png" reference="https://github.com/cxsper/vue-shortener"></Sticker>
  </div>
</template>

<script>
import Shortener from "./components/Shortener.vue";
import Sticker from "./components/Sticker.vue";

export default {
  name: "app",
  components: {
    Shortener,
    Sticker
  }
};
</script>

<style lang="stylus">
@require('./assets/index.css')

#app
  min-height: 100vh
  justify-content: center
  display: flex
  align-items: center
</style>
