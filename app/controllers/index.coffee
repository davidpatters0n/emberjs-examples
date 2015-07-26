`import Ember from 'ember'`

basic = Ember.Controller.extend
  className: 'red'
  name: 'DJ Patterson'
  edit: false
  firstName: 'DJ'
  lastName: 'Patterson'
  nameDisabled: true
  expiryDate: ''
  manufactoringDate: ''


  actions:
    changeEdit: ->
      @.toggleProperty('edit')

    toggleColor: ->
      if(@get('className') == 'red')
        @set('className', 'blue')
      else
        @set('className', 'red')

    saveMaufactoringDate: (date) ->
      @set 'manufactoringDate', date

    saveExpiryDate: (date) ->
      @set 'expiryDate', date

    alert: ->
      #some controller level processing
      #important to return true because this tells
      #ember to continue event bubbling.
      return true

`export default basic`
