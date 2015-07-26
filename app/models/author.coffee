`import DS from 'ember-data'`

AuthorModel = DS.Model.extend
  firstName:  DS.attr('string')
  lastName:   DS.attr('string')

  fullName: Em.computed('firstName', 'lastName', ->
    @get('firstName') + ' ' + @get('lastName')
  )
  bio:        DS.attr('string')
  books:      DS.hasMany('book')

`export default AuthorModel`
