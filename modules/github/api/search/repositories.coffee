Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /search/repositories'
    'GET /search/code'
    'GET /search/issues'
    'GET /search/users'
  ]
