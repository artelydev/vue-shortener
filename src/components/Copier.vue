<template lang="pug">
  div(@click="copy")
    slot
</template>

<script lang="coffee">
  export default
    props:
      what:
        type: String
        required: true

      oncopy:
        type: Function
        required: false

    methods:
      copy: (e) ->
        el = document.createElement 'textarea'
        el.value = @what
        el.setAttribute 'readonly', ''
        el.style.position = 'absolute'
        el.style.left = '-9999px'
        document.body.appendChild el
        el.select()
        document.execCommand 'copy'
        document.body.removeChild el

        if @oncopy
          do @oncopy
</script>
