class GitSocial.RouteController extends Space.ui.RouteController

  @toString: -> 'RouteController'
  
  configure: ->
    @addRoute route for name, route of GitSocial.route
