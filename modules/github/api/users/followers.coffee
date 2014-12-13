_.extend GitHub.api,
  'GET /users/:username/followers':
    doc: "List a user's followers"
    f: 'getUserFollowers'

  'GET /user/followers':
    doc: "List the authenticated user's followers"
    f: 'getMyFollowers'

  'GET /users/:username/following':
    doc: 'List who a user is following'
    f: 'getWhoUserFollows'

  'GET /user/following':
    doc: 'List who the authenticated user is following'
    f: 'getWhoIFollow'

  'GET /user/following/:username':
    doc: 'Check if you are following a user'
    f: 'doIFollow'
    
  'GET /users/:username/following/:target_user':
    doc: 'Check if one user follows another'
    f: 'doesUserFollowOther'

  'PUT /user/following/:username':
    doc: 'Follow a user'
    f: 'follow'

  'DELETE /user/following/:username':
    doc: 'Unfollow a user'
    f: 'unfollow'
