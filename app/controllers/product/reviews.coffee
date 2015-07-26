`import Ember from 'ember'`

ReviewController = Ember.ArrayController.extend
  # this allows us to manage dpenedencies between controllers
  # In this particualr instance we need to show the name of a product
  # for a particular review. The "Product" object is set in the model
  # property of the product controller
  # controllers are made accessible through the needs option.
  # This means we can access the product by doing controllers.product
  needs: ['product']

  product: Ember.computed.alias("controllers.product")
  # To make the above simplier we create an alias using Ember.alias and pass in the
  # controller we want to alias.


`export default ReviewController`
