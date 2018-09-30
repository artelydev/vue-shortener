<template lang="pug">
  button.button(@click="onclick", :disabled="disabled")
    span
      slot
</template>

<script lang="coffee">
  export default
    props:
      onclick:
        type: Function
        required: false
      disabled:
        type: Boolean
        required: false

</script>

<style lang="stylus">

$color = #35495E
$bg = #41B883

.button
  cursor: pointer
  outline: none
  transform: translate3d(-50%, -50%, 0)
  backface-visibility: hidden
  position: relative
  display: inline-block
  padding: 0
  background-color: transparent
  border: none
  text-transform: uppercase
  letter-spacing: 0.1em
  color: $color

  span
    transform: translate3d(0, 0, 0)
    backface-visibility: hidden
    position: relative
    display: block
    height: 100%
    padding: 20px 50px
    z-index: 3

  &:before
  span:before
    content: ''
    position: absolute
    left: 50%
    top: 50%
    transform: translate(-50%, -50%) skewX(-20deg)
    width: 100%
    height: 50px
    border: 1px solid $bg
    z-index: 2

  span:before
    display: block
    transform: translate(-50%, -50%) skew(-20deg)
    transform-origin: center center
    z-indeX: -1

  &:after
    transition: all 100ms ease-out
    content: ''
    position: absolute
    left: 0
    top: 0
    transform: skewX(-20deg) scaleX(0)
    width: 100%
    height: 100%
    background-color: $bg
    border: 1px solid transparent
    z-index: 1

  &:hover
    span:before
      animation: fill .5s ease-out
      animation-fill-mode: forwards

    &:after
      animation: swoosh .7s ease-in

  &:active
    &:before
      background-color: darken($bg, 20%)


  &:disabled
    cursor: not-allowed
    opacity: .5


@keyframes swoosh
  0%
    transform-origin: left center

  20%
    transform: skewX(-20deg) scaleX(1)
    transform-origin: left center

  21%
    transform-origin: right center

  50%
    transform: skewX(-20deg) scaleX(0)
    transform-origin: right center

@keyframes fill
  0%
    background-color: rgba($bg, 0)

  20%
    opacity: .5
    border-width: 15px
    border-color: darken($bg, 10%)

  100%
    opacity: .5
    border-width: 1px
    background-color: rgba($bg, 0.5)


</style>
