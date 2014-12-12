GitHub.api.starring.doc =
  sort: 'One of created (when the repository was starred) or updated (when it was last pushed to).'

$.extend GitHub.api,
  'GET /repos/:owner/:repo/stargazers':
    doc: 'List Stargazers'
    f: 'getStargazers'

  'GET /users/:username/starred':
    doc: 'List repositories being starred by a user.'
    f: 'getUserStarredRepos'
    params:
      sort: GitHub.api.types.sort
        doc: GitHub.api.starring.doc.sort
      direction: GitHub.api.types.direction
        
  'GET /user/starred':
    doc: 'List repositories being starred by the authenticated user.'
    f: 'getMyStarredRepos'
    params:
      sort: GitHub.api.types.sort
        doc: GitHub.api.starring.doc.sort
      direction: GitHub.api.types.direction

  'GET /user/starred/:owner/:repo':
    doc: 'Check if you are starring a repository'
    f: 'isStarred'

  'PUT /user/starred/:owner/:repo':
    doc: 'Star a repository'
    f: 'star'

  'DELETE /user/starred/:owner/:repo':
    doc: 'Unstar a repository'
    f: 'unstar'
