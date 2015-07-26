`import DS from 'ember-data'`

UserModel = DS.Model.extend
  name:     DS.attr('string')
  address:  DS.belongsTo('address')


`export default UserModel`
