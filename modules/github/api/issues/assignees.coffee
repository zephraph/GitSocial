_.extend GitHub.api,
  'GET /repos/:owner/:repo/assignees':
    doc: "This call lists all the available assignees (owner + collaborators) to which issues may be assigned."
    f: 'getAssignees'

  'GET /repos/:owner/:repo/assignees/:assignee':
    doc: 'Check to see if a user is an assignee of a repo.'
    f: 'isAssignee'
