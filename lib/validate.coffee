@validate = (value) ->
  @value = value

  @isType = (type, value) ->
    value = value ? @value
    types = type.split('|')
    for type in types
      format = null

      if type.indexOf(':') >= 0
        [type, format] = type.split(':')[0]

      switch type
        when 'number', 'string', 'boolean'
          return yes if type is typeof value

        when 'array'
          if format?
            for item in value
              return no if not @isType(format, item)
            return yes

        when 'date'
          date = new Date(value)

          return no if date.toString is 'Invalid Date'
          return yes if not format?

          return no if value instanceof Date

          switch format
            when 'ISO 8061'
              if date.toISOString() is value then yes else no

  return @
