`import Ember from 'ember'`

ProductsController = Ember.ArrayController.extend
  sortProperties: ['name'] #An array of properties that shouldbe sorted
  sortAscending: true
  # For individual item-specific transformation we tell Ember which controller
  # it should look at for each individual item in the list.
  itemController: 'product'

`export default ProductsController`
