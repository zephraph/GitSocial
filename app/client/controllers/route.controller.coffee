Namespace 'GitSocial', ->

  class @RouteController extends Space.ui.RouteController
    @toString: -> 'GitSocial.RouteController'
    
    configure: ->
      @addRoute route for name, route of GitSocial.route
