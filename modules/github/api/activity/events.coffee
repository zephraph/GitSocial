Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /events'
    'GET /repos/:owner/:repo/events'
    'GET /repos/:owner/:repo/issues/events'
    'GET /networks/:owner/:repo/events'
    'GET /orgs/:org/events'
    'GET /users/:username/received_events'
    'GET /users/:username/received_events/public'
    'GET /users/:username/events'
    'GET /users/:username/events/public'
    'GET /users/:username/events/orgs/:org'
  ]
