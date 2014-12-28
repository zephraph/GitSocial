Template.feed.helpers
  posts: ->
    [
      {
        user: 'John Doe'
        action: 'posted a status'
        likes: 32
        content: 'Hello World!'
        _first: true
      }
      {
        user: 'Jane Doe'
        action: 'posted a status'
        likes: 5
        content: 'This is a test.'
      }
      {
        user: 'somebody'
        action: 'posted a status'
        content: 'This is another test.'
      }
    ]
