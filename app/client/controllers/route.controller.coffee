Namespace 'GitSocial', ->

  class @RouteController extends Space.ui.RouteController
    @toString: -> 'GitSocial.RouteController'
    
    configure: ->
      @router.configure
        layoutTemplate: 'main'

      @addRoute route for name, route of GitSocial.route
