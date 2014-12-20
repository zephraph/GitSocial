Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /users/:username'
    'GET /user'
    'PATCH /user'
    'GET /users'
  ]
