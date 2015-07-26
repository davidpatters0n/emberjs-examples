`import DS from 'ember-data'`

AddressModel = DS.Model.extend
  street:     DS.attr('string')
  city:       DS.attr('string')
  houseNo:    DS.attr('number')
  user:       DS.belongsTo('user')

`export default AddressModel`
