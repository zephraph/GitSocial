Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /feeds'
  ]
