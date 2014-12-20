Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /issues'
    'GET /user/issues'
    'GET /orgs/:org/issues'
    'GET /repos/:owner/:repo/issues'
    'GET /repos/:owner/:repo/issues/:number'
    'POST /repos/:owner/:repo/issues'
    'PATCH /repos/:owner/:repo/issues/:number'
  ]
