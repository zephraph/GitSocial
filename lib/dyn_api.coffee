getRouteItem = (component, parent) ->

  item = (args...) ->
    item.args = args
    return item

  item._component = component

  if parent?
    parent[component] = item

  item._buildRoute = ->
    route = if parent? then parent._buildRoute() else ''
    route += '/' + component
    for arg in item.args ? 0
      route += '/' + arg
    return route

  item.go = ->
    item._buildRoute()

  return item
