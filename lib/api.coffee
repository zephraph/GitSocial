Namespace 'Utilities', ->
  class @api
    construct: (url, api, ajaxAdpater) ->
      @ajaxAdapter = ajaxAdapter
      @url = url

      for method, rule of api
        @[method] = @_getConsumer rule

    _getConsumer: (rule) ->
      routeParams = []

      [method, route] = rule.split(' ')
      route = route.split('/')

      while route.length isnt 0
        item = route.shift()
        if item[0] is ':'
          routeParams.push item[1..]

      # TODO: Call calulate route

      return =>
        args = Array::slice.call arguments
        @ajaxAdapter method, url + route, arguments

    _calculateRoute: (route)
      # TODO: finish route calculation
