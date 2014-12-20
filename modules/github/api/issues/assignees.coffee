Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /repos/:owner/:repo/assignees'
    'GET /repos/:owner/:repo/assignees/:assignee'
  ]
