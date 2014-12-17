Namespace 'GitHub', ->
  class @Module extends Space.Module
    @publish this, 'GitHub'

    configure: ->
      GitHub.api = new Utilities.api('https://api.github.com', GitHub.api, HTTP)
