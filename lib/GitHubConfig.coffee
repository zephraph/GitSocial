@GitHub =
  api: [

    # Users
    'GET /users/:username'
    'GET /user'
    'GET /users': [
      'since'
    ]

    # Followers
    'GET /users/:username/followers'
    'GET /user/followers'
    'GET /users/:username/following'
    'GET /user/following'
    'GET /user/following/:username'
    'GET /users/:username/following/:target_user'
    'PUT /user/following/:username'
    'DELETE /user/following/:username'

    # Repositories
    'GET /user/repos': [
      'type'
      'sort'
      'direction'
    ]

    'GET /users/:username/repos': [
      'type'
      'sort'
      'direction'
    ]

    'GET /orgs/:org/repos': [
      'type'
    ]

    'GET /repositories': [
      'since'
    ]

    'POST /user/repos': [
      'name'
      'description'
      'homepage'
      'private'
      'has_issues'
      'has_wiki'
      'has_downloads'
      'team_id'
      'auto_init'
      'gitignore_template'
      'license_template'
    ]

    'POST /orgs/:org/repos': [
      'name'
      'description'
      'homepage'
      'private'
      'has_issues'
      'has_wiki'
      'has_downloads'
      'team_id'
      'auto_init'
      'gitignore_template'
      'license_template'
    ]
  ]
