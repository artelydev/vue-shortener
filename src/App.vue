<template>
  <div id="app">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    <Sticker image="https://upload.wikimedia.org/wikipedia/commons/f/f1/Vue.png" reference="https://github.com/cxsper/vue-shortener"></Sticker>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";
import Sticker from "./components/Sticker.vue";

export default {
  name: "app",
  components: {
    HelloWorld,
    Sticker
  }
};
</script>

<style>
#app {
  font-family: "OpenSans", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
