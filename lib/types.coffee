extend = (obj1, obj2) ->
  _.extend(obj2, obj1)
  obj2

GitHub.api.types =
  all: (args) ->
    extend args,
      type: 'boolean'
      default: false

  participating: (args) ->
    extend args,
      type: 'boolean'
      default: false

  since: (args) ->
    extend args,
      type: 'date:ISO 8061'
      default: 'Time.now'

  last_read_at: (args) ->
    extend args,
      type: 'date:ISO 8601'
      default: 'Time.now'

  subscribed: (args) ->
    extend args,
      type: 'boolean'
    
  ignored: (args) ->
    extend args,
      type: 'boolean'

  sort: (args) ->
    extend args,
      type: 'string'
      choice: ['created', 'updated']
      default: 'created'

  direction: (args) ->
    extend args,
      doc: 'One of asc (ascending) or desc (descending).'
      type: 'string'
      choice: ['asc', 'desc']
