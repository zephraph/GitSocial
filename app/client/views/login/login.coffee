Template.login.helpers
  authGitHub:
    false

  allowRegistration: ->
    if window.location.pathname is GitSocial.route.register.path then false else true


Template.login.events
  'keypress #pass,#user': ->
    $('.ui.error.message').hide()

  'click #login': ->
    Meteor.loginWithPassword(
      $('#user').val()
      $('#pass').val()
      (error) ->
        if not error?
          Route.go nextRoute or '/'
        else
          $('.ui.error.message').show()
    )
