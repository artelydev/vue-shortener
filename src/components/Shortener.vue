<template lang="pug">
  .shortener
    .shortened(v-if="shortened")
      Copier(:what="shortened", :oncopy="handleOnCopy")
        | Click on me! Shortened: {{ shortened }}

    .shortened(v-else) {{ message }}

    .input-wrapper
      Input(
        :val="url"
        :onchange="handleInputChange"
        kind="text"
        :valid="isUrlValid"
        :autofocus="true"
      )
      
    .button-wrapper
      Button(
        :onclick="createShortLink"
        :disabled="!isUrlValid"
      )
        | Shorten

</template>

<script lang="coffee">
import links from '../api/LinksAPI'
import base62 from '../utils/base62'
import Input from './Input'
import Button from './Button'
import Copier from './Copier'

fallback =
  message: "Let's paste a proper link..."
  url: ''
  shortened: ''

export default
  data: -> fallback

  components: { Input, Button, Copier }

  computed:
    isUrlValid: -> !!@url.match /^(?:http(s)?:\/\/)[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$/

  methods:
    resetMessage: -> @message = fallback.message
    reset: ->
      @shortened = fallback.shortened
      @url = fallback.url

    handleInputChange: (e) -> @url = e.target.value

    handleOnCopy: ->
      do @reset

      new Promise (resolve, reject) =>
          @message = "Your link is copied!"

          setTimeout =>
            resolve()
          , 3000
        .then () => @resetMessage()

    storeLink: (hash) =>
      links.store
        url: @url
        shortened: hash
      .then (res) =>
        # set shortened
        @shortened = res.data.shortened

      .catch (e) =>
        if e.response.status is 422
          console.log e.response.data
          do @reset

    createShortLink: () ->
      links.get(@url).then (res) =>
        existing = res.data

        # if it's present - return shortened
        if existing
          @shortened = exiting.shortened
          return

        # otherwise make hash
        links.count().then (res) =>
          hash = base62 +res.data
          @storeLink hash



</script>

<style lang="stylus" scoped>

.shortener
  display: flex
  flex-direction: column
  align-items: center

.shortened
  color: #9B9B9B
  margin-bottom: 15px

.button-wrapper
  position: relative

.input-wrapper
  margin-bottom: 20px

</style>
