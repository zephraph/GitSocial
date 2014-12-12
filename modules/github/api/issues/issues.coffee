issueParams =
  filter:
    doc:"Indicates which sorts of issues to return. Can be one of:
    * assigned: Issues assigned to you
    * created: Issues created by you
    * mentioned: Issues mentioning you
    * subscribed: Issues you're subscribed to updates for
    * all: All issues the authenticated user can see, regardless of participation or creation
    Default: assigned"
    type: 'string'
    choice: ['assigned', 'created', 'mentioned', 'subscribed', 'all']
  state:
    doc: "Indicates the state of the issues to return. Can be either open, closed, or all. Default: open"
    type: 'string'
    choice: ['open', 'closed', 'all']
  labels:
    doc: 'A list of comma separated label names. Example: bug,ui,@high'
    type: 'string'
  sort:
    doc: "What to sort results by. Can be either created, updated, comments. Default: created"
    type: 'string'
    choice: ['created', 'updated', 'comments']
  direction:
    doc: 'The direction of the sort. Can be either asc or desc. Default: desc'
    type: 'string'
    choice: ['asc', 'desc']
  since:
    doc: "Only issues updated at or after this time are returned. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ."
    type: 'date:ISO 8601'

$.extend GitHub.api,
  'GET /issues':
    doc: "List all issues across all the authenticated user's visible repositories including owned repositories, member repositories, and organization repositories"
    f: 'getIssues'
    params: issueParams


  'GET /user/issues':
    doc: 'List all issues across owned and member repositories for the authenticated user'
    f: 'getMyIssues'
    params: issueParams

  'GET /orgs/:org/issues':
    doc: 'List all issues for a given organization for the authenticated user'
    f: 'getOrgIssues'
    params: issueParams

  'GET /repos/:owner/:repo/issues':
    doc: 'List issues for a repository'
    f: 'getRepoIssues'
    params:
      milestone:
        doc: "If an integer is passed, it should refer to a milestone number. If the string * is passed, issues with any milestone are accepted. If the string none is passed, issues without milestones are returned."
        type: 'integer|string'
      state:
        doc: "Indicates the state of the issues to return. Can be either open, closed, or all. Default: open"
        type: 'string'
        choice: ['open', 'closed', 'all']
      assignee:
        doc: "Can be the name of a user. Pass in none for issues with no assigned user, and * for issues assigned to any user."
        type: 'string'
      creator:
        doc: "The user that created the issue."
        type: 'string'
      mentioned:
        doc: "A user that's mentioned in the issue."
        type: 'string'
      labels:
        doc: "A list of comma separated label names. Example: bug,ui,@high"
        type: 'string'
      sort:
        doc: "What to sort results by. Can be either created, updated, comments. Default: created"
        type: 'string'
        choice: ['created', 'updated', 'comments']
      direction:
        doc: "The direction of the sort. Can be either asc or desc. Default: desc"
        type: 'string'
        choice: ['asc', 'desc']
      since:
        doc: "Only issues updated at or after this time are returned. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ."
        type: 'date:ISO 8601'

  'GET /repos/:owner/:repo/issues/:number':
    doc: 'Get a single issue'
    f: 'getIssue'

  'POST /repos/:owner/:repo/issues':
    doc: 'Create an issue'
    f: 'createIssue'
    params:
      title:
        doc: 'Required. The title of the issue.'
        type: 'string'
        required: true
      body:
        doc: 'The contents of the issue.'
        type: 'string'
      assignee:
        doc: "Login for the user that this issue should be assigned to. NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise."
        type: 'string'
      milestone:
        doc: "Milestone to associate this issue with. NOTE: Only users with push access can set the milestone for new issues. The milestone is silently dropped otherwise."
        type: 'integer'
      labels:
        doc: "Labels to associate with this issue. NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise."
        type: 'array:string'

  'PATCH /repos/:owner/:repo/issues/:number':
    doc: "Edit an issue"
    f: 'editIssue'
    params:
      title:
        doc: 'The title of the issue.'
        type: 'string'
      body:
        doc: 'The contents of the issue.'
        type: 'string'
      assignee:
        doc: "Login for the user that this issue should be assigned to. NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise."
        type: 'string'
      milestone:
        doc: "Milestone to associate this issue with. NOTE: Only users with push access can set the milestone for new issues. The milestone is silently dropped otherwise."
        type: 'integer'
      labels:
        doc: "Labels to associate with this issue. NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise."
        type: 'array:string'
