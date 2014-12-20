
class RestInterface
  constructor: (api, config = {}) ->

    for rule in api
      [verb, route] = rule.split(' ')

      # Create verb anchor point
      verbItem = RestItemBuilder(null, null, verb: verb, config: config[verb] ? {})
      verbItem._attributes.ajaxAdapter = config.ajaxAdapter
      verbItem._attributes.url = config.url
      @[verb.toLowerCase()] = verbItem
      if config[verb]?.aliases?
        for alias in config[verb].aliases
          @[alias] = verbItem

      @_buildRoute verbItem, route

  _buildRoute: (verbItem, route) ->
    route = route.split('/')
    currentItem = verbItem

    for item in route
      if item isnt '' and item[0] isnt ':'
        newItem = RestItemBuilder(item, currentItem)
        currentItem = newItem
