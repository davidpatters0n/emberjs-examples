`import Ember from 'ember'`

ApplicationRoute  = Ember.Route.extend
  actions:
    alert: (message) ->
      applicationController = @controllerFor('application')
      #In the above we fetch the controller so we have access to its properties
      applicationController.set('className', 'alert alert-danger')
      applicationController.set('message', message)
      Ember.run.later (->
        applicationController.set('className', 'hide')
      ), 2000
      #Ember run later is similar to setTimeout
`export default ApplicationRoute`
