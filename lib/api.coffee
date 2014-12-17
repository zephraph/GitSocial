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

      return =>
        args = Array::slice.call arguments

        for i in [1..2]
          temp = args.pop()
          switch typeof temp
            when 'function'
              callback = temp
            when 'object'
              post = temp
            else
              args.push temp

        route = @_constructRoute route args

        @ajaxAdapter method, url + route, post, callback

    _constructRoute: (route, args) ->
      fullRoute = ''
      while route.length isnt 0
        temp = route.shift()
        if temp[0] isnt ':'
          fullRoute.concat '/', temp
        else
          fullRoute.concat '/', args.shift()
      return fullRoute
