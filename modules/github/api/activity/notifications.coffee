GitHub.api.doc.notifications =
  all: "If true, show notifications marked as read."
  participating: 'If true, only shows notifications in which the user is directly participating or mentioned.'
  since: 'Filters out any notifications updated before the given time.'
  last_read_at: 'Describes the last point that notifications were checked. Anything updated since this time will not be updated.'
  subscribed: 'Determines if notifications should be received from this thread'
  ignored: 'Determines if all notifications should be blocked from this thread'

$.extend GitHub.api,
  'GET /notifications':
    doc: 'List all notifications for the current user, grouped by repository.'
    f: 'getNotifications'
    params:
      all: GitHub.api.types.all
        doc: GitHub.api.doc.notifications.all

      participating: GitHub.api.types.participating
        doc: GitHub.api.doc.notifications.participating

      since: GitHub.api.types.since
        doc: GitHub.api.doc.notifications.since

  'GET /repos/:owner/:repo/notifications':
    doc: 'List your notifications in a repository'
    f: 'getNotificationsForRepo'
    params:
      all: GitHub.api.types.all
        doc: GitHub.api.doc.notifications.all

      participating: GitHub.api.types.participating
        doc: GitHub.api.doc.notifications.participating

      since: GitHub.api.types.since
        doc: GitHub.api.doc.notifications.since

  'PUT /notifications':
    doc: 'Mark as read'
    f: 'setNotificationsRead'
    params:
      last_read_at: GitHub.api.types.last_read_at
        doc: GitHub.api.doc.notifications.last_read_at

  'PUT /repos/:owner/:repo/notifications':
    doc: 'Mark notifications as read in a repository'
    f: 'setRepoNotificationsRead'
    params:
      last_read_at: GitHub.api.types.last_read_at
        doc: GitHub.api.doc.notifications.last_read_at

  'GET /notifications/threads/:id':
    doc: 'View a single thread'
    f: 'getThread'

  'PATCH /notifications/threads/:id':
    doc: 'Mark a thread a read'
    f: 'markThreadRead'

  'GET /notifications/threads/:id/subscription':
    doc: "Check to see if you're subscribed to a thread"
    f: 'isSubscribed'

  'PUT /notifications/threads/:id/subscription':
    doc: 'This lets you subscribe to a thread, or ignore it. Subscribing to a thread is unnecessary if the user is already subscribed to the repository. Ignoring a thread will mute all future notifications (until you comment or get @mentioned).'
    f: 'setSubscription'
    params:
      subscribed: GitHub.api.types.subscribed
        doc: GitHub.api.doc.notifications.subscribed

      ignored: GitHub.api.types.ignored
        doc: GitHub.api.doc.notifications.ignored

  'DELETE /notifications/threads/:id/subscription':
    doc: 'Delete a thread subscription'
    f: 'deleteSubscription'
