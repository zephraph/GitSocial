@api = (rule, params...) ->
  [method, route] = rule.split(' ')
  route = route.split('/')
