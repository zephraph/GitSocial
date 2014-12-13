_.extend GitHub.api,
  'GET /users/:username':
    doc: 'Get a single user'
    f: 'getUser'

  'GET /user':
    doc: 'Get the authenticated user'
    f: 'getMe'

  'PATCH /user':
    doc: 'Update the authenticated user'
    f: 'updateUserInfo'
    params:
      name:
        doc: 'The new name of the user'
        type: 'string'
      email:
        doc: 'Publicly visible email address'
        type: 'email'
      blog:
        doc: 'The new blog URL of the user'
        type: 'url'
      company:
        doc: 'The new company of the user'
        type: 'string'
      location:
        doc: 'The new location of the user'
        type: 'string'
      hireable:
        doc: 'The new hiring availability of the user'
        type: 'boolean'
      bio:
        doc: 'The new short biography of the user'
        type: 'string'


  'GET /users':
    doc: 'Get all users'
    f: 'getAllUsers'
    params:
      since:
        doc: "The integer ID of the last User that you've seen."
        type: 'string'
