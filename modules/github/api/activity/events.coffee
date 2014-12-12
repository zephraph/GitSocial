$.extend GitHub.api,
  'GET /events':
    doc: 'List public events'
    f: 'getEvents'
  
  'GET /repos/:owner/:repo/events':
    doc: 'List repository events'
    f: 'getRepoEvents'

  'GET /repos/:owner/:repo/issues/events':
    doc: 'List issue events for a repo'
    f: 'getRepoIssueEvents'

  'GET /networks/:owner/:repo/events':
    doc: 'List public events for a nework of repositories'
    f: 'getPublicNetworkRepoEvents'

  'GET /orgs/:org/events':
    doc: 'List public events for an organization'
    f: 'getOrgEvents'

  'GET /users/:username/received_events':
    doc: "These are events that you've received by watching repos and following users. If you are authenticated as the given user, you will see private events. Otherwise, you'll only see public events."
    f: 'getReceivedEvents'

  'GET /users/:username/received_events/public':
    doc: 'List public events that a user has received'
    f: 'getPublicReceivedEvents'

  'GET /users/:username/events':
    doc: "List events performed by a user. If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events."
    f: 'getUserPerformedEvents':

  'GET /users/:username/events/public':
    doc: 'List public events performed by a user'
    f: 'getPublicUserPerformedEvents'

  'GET /users/:username/events/orgs/:org':
    doc: "List events for an organization. This is the user's organization dashboard. You must be authenticated as the user to view this."
    f: 'getOrgEvents'
