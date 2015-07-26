`import Ember from 'ember'`

CommitsIndex = Ember.Route.extend
  model: ->
    url = 'https://api.github.com/repos/emberjs/ember.js/commits'
    Ember.$.getJSON(url)

`export default CommitsIndex`
