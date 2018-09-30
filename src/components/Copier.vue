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

      onCopy:
        type: Function
        required: false

    methods:
      handleOnClick: (e) =>
        el = document.createElement 'textarea'
        el.value = @what
        el.setAttribute 'readonly', ''
        el.style.position = 'absolute'
        el.style.left = '-9999px'
        document.body.appendChild el
        el.select()
        document.execCommand 'copy'
        document.body.removeChild el
        
        if @onCopy
          do @onCopy
</script>
