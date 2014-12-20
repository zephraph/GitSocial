Namespace 'GitHub', ->
  if not @api? then @api = []

  @api = _.union @api, [
    'GET /notifications'
    'GET /repos/:owner/:repo/notifications'
    'PUT /notifications'
    'PUT /repos/:owner/:repo/notifications'
    'GET /notifications/threads/:id'
    'PATCH /notifications/threads/:id'
    'GET /notifications/threads/:id/subscription'
    'PUT /notifications/threads/:id/subscription'
    'DELETE /notifications/threads/:id/subscription'
  ]
