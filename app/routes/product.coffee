`import Ember from 'ember'`

productRoute = Ember.Route.extend
  model: (params) ->

    {
      'id': 1
      'name': 'Leather Jacket'
      'description': 'A very long jacket desction which cannot be shown inside a table and will have to be shortened'
      'currency': 'USD'
      'symbol': '$'
      'price': '1999.999'
      'dimensions':
        'length': 7.0
        'width': 12.0
        'height': 9.5
    }




`export default productRoute`
