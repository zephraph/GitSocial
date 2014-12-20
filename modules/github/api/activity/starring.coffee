Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /repos/:owner/:repo/stargazers'
    'GET /users/:username/starred'
    'GET /user/starred'
    'GET /user/starred/:owner/:repo'
    'PUT /user/starred/:owner/:repo'
    'DELETE /user/starred/:owner/:repo'
  ]
