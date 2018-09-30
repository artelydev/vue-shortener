<template lang="pug">
  .wrapper
    input.input(
      :value="val"
      @input="onchange"
      :type="kind"
      :autofocus="autofocused"
      :class="{ 'input--invalid': !valid }"
      :spellcheck="false"
    )

    span.highlight(v-if="val", :class="{ 'highlight--invalid': !valid }")
      | {{ val.replace(/ /g, "\u00a0") }}
</template>

<script lang="coffee">
  export default
    props:
      val:
        type: String
        required: true
      onchange:
        type: Function
        required: false
      autofocused:
        type: Boolean
        required: false
      valid:
        type: Boolean
        required: false
      kind:
        type: String
        required: true
</script>

<style lang="stylus" scoped>
@require '../utils/variables.sss'

$invalid_transition = 250ms

.input
  outline none
  height: 30px
  width: 100%
  min-width: 100%
  padding: 0
  border-radius: 0
  background-color: transparent
  color: alpha($bg, .8)
  border: none
  outline: none
  border-bottom: 3px solid rgba(150,150,150, .4)
  transition: color $invalid_transition ease

  &:hover
    color: $bg

  &--invalid
    color: alpha($color, .7)

    &:hover
      color: $color

  &:focus
    outline: none

  &:hover
  &:focus
    & + .highlight
      border-top: 3px solid $bg

    & + .highlight--invalid
      border-top: 3px solid $color

.wrapper
  position: relative
  width: 300px

  @media screen and (max-width:720px)
    width: 250px

.input
.highlight
  line-height: 40px
  font-size: 20px

.highlight
  user-select: none
  position: absolute
  left: 0
  bottom: 0
  max-width: 100%
  height: 0
  color: transparent
  overflow: hidden
  transition: border-top $invalid_transition ease
  border-top: 3px solid alpha($bg, .7)

  &--invalid
    border-top: 3px solid alpha($color, .7)

</style>
