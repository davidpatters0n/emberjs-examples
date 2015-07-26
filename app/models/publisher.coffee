`import DS from 'ember-data'`

PublisherModel = DS.Model.extend
  name:                 DS.attr('string')
  organisationName:     DS.attr('string')
  address:              DS.attr('string')
  books:                DS.hasMany('book')


`export default PublisherModel`
