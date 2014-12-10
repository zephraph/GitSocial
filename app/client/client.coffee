class GitSocial.Application extends Space.Application

  RequiredModules: ['Space.ui']

  configure: ->

    # Routing
    @injector.map('RouteController').toSingleton GitSocial.RouteController

  run: ->
    @injector.create 'RouteController'
