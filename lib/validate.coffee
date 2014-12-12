@validate = (value) ->
  @value = value

  @isType = (type, value) ->
    value = value ? @value
    types = type.split('|')
    for type in types
      format = null

      if type.indexOf(':') >= 0
        [type, format] = type.split(':')[0]

        if type in ['number', 'string', 'boolean']
          return yes if type is typeof value

        else if type is 'array'
          if format?
          for item in value
            return no if not @isType(format, item)
          return yes

  return @
