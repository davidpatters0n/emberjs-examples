`import Ember from 'ember'`

bookRoute = Ember.Route.extend
  model: (params) ->
    @store.find('book', params.id)

`export default bookRoute`
