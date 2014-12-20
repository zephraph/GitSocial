Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /users/:username/followers'
    'GET /user/followers'
    'GET /users/:username/following'
    'GET /user/following'
    'GET /user/following/:username'
    'GET /users/:username/following/:target_user'
    'PUT /user/following/:username'
    'DELETE /user/following/:username'
  ]
