Namespace 'GitSocial', ->
  class @Application extends Space.Application

    RequiredModules: ['Space.ui', 'GitHub']

    configure: ->
      # Routing
      @injector.map('GitSocial.RouteController').toSingleton GitSocial.RouteController

    run: ->
      @injector.create 'GitSocial.RouteController'
