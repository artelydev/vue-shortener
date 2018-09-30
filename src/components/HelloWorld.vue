<template lang="pug">
  .hello
    div
      btn(:onclick="onClick") Shorten

    div
      inp(:val="url", kind="text", :valid="isValid", :onchange="onInputChange")

</template>

<script lang="coffee">
import Button from './Button'
import Input from './Input'

export default
  name: "HelloWorld"
  data: ->
    url: ''

  props:
    msg: String

  components:
    btn: Button
    inp: Input

  methods:
    onClick: ->
      console.log 'hi'

    onInputChange: (e) ->
      { value } = e.target
      @url = value

  computed:
    isValid: ->
      !!@url.match /^(?:http(s)?:\/\/)[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$/

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="stylus">

h3
  margin: 40px 0 0

ul
  list-style-type: none
  padding: 0

li
  display: inline-block
  margin: 0 10px

a
  color: #42b983

</style>
