`import Ember from 'ember'`

ProductController = Ember.ObjectController.extend
  formattedPrice: Ember.computed 'symbol', ->
    @get('model.symbol')

  formattedDimension: Ember.computed 'dimensions.width', 'dimensions.height', 'dimensions.length', ->
    @get('model.dimensions.width') + ' x ' + @get('model.dimensions.height') + ' x ' + @get('model.dimensions.length')

  shortDescription: Ember.computed 'description', ->
    shortDesc = @get('model.description').substring(0, 25)
    shortDesc + '...'

`export default ProductController`


###
 The above extends an ObjectController which is to work on individual items
 there are a number of computed properties defined above. This transforms the data
 into a representable format for the user

###
