<template lang="pug">
  a.sticker(
    href="reference"
    target="_blank"
  )
    img.img(:src="image")
</template>

<script lang="coffee">
  export default
    props:
      reference:
        type: String
        required: true

      image:
        type: String
        required: true

</script>

<style lang="stylus" scoped>

.sticker
  height: 70px
  position: fixed
  bottom: 4%
  right: 3%
  transition: all .5s ease

  &:hover
    transform: scale(1.3) rotateY(180deg)

.img
  height: 100%

</style>
