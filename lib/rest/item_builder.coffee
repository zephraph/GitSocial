@RestItemBuilder = (component, parent, attributes) ->

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

  item.go = (options = {}) ->
    for option of item._attributes
      if not options[option]?
        options[option] = item._attributes[option]

    route = item._buildRoute()
    a = item._attributes
    a.ajaxAdapter a.verb, a.url + route, options

  return item
