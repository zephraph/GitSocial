Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /user/emails'
    'POST /user/emails'
    'DELETE /user/emails'
  ]
