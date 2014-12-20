APIItemBuilder = (component, parent, attributes) ->

  item = (args...) ->
    item.args = args
    return item

  item._component = component
  item._attributes = attributes ? {}

  if parent?
    parent[component] = item
    for attribute of parent._attributes
      item._attributes[attribute] = parent._attributes[attribute]

  item._buildRoute = ->
    route = if parent? then parent._buildRoute() else ''
    if component?
      route += '/' + component
      for arg in item.args ? 0
        route += '/' + arg
    return route

  item.go = ->
    item._buildRoute()

  return item
