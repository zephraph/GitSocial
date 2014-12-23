Namespace 'GitHub', ->
  class @Module extends Space.Module
    @publish this, 'GitHub'

    configure: ->
      GitHub.api = new RestInterface GitHub.api,
        url: 'https://api.github.com'
        ajaxAdapter: (verb, url, options) ->
          HTTP.call(verb, url, options, options.callback)
        POST:
          aliases: ['create']
        PUT:
          aliases: ['set']
        PATCH:
          aliases: ['update']
        DELETE:
          aliases: ['remove']

      @injector.map('GitHub.RouteController').toSingleton GitHub.RouteController

      run: ->
        @injector.create 'GitHub.RouteController'
