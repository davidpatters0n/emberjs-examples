`import Ember from 'ember'`

date_picker = Ember.Component.extend
  actions: {
    submit: ->
      date = @$('input').val()
      @sendAction('action', date)
      # 'action' passes the name of the property that provides
      # the action that should be called on either route/controller
      # and the date
      # example {{date-piker action 'saveManufactoringDate'}} this will
      # look up the controller/route that has this action defined.
  }

`export default date_picker`
