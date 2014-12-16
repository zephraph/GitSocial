Namespace 'GitHub.api',
  'GET /users/:username/followers': 'getUserFollowers'
  'GET /user/followers': 'getMyFollowers'
  'GET /users/:username/following': 'getWhoUserFollows'
  'GET /user/following': 'getWhoIFollow'
  'GET /user/following/:username': 'doIFollow'
  'GET /users/:username/following/:target_user': 'doesUserFollowOther'
  'PUT /user/following/:username': 'follow'
  'DELETE /user/following/:username': 'unfollow'
