@Namespace = (scope, definition) ->
  root = GLOBAL ? window
  scope = scope.split '.'

  for item in scope
    if not root[item]?
      root[item] = {}
    root = root[item]

  switch typeof definition
    when 'function' then definition.apply root
    when 'object' then _.extend root, definition

  return root
