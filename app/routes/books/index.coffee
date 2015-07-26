`import Ember from 'ember'`

indexRoute = Ember.Route.extend
  model: ->
    @store.find('book')

`export default indexRoute`
