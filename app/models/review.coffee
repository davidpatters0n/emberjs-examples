`import DS from 'ember-data'`

ReviewModel = DS.Model.extend
  name:     DS.attr('string')
  comment:  DS.attr('string')
  book:     DS.belongsTo('book')


`export default ReviewModel`
