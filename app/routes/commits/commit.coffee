`import Ember from 'ember'`

Commit = Ember.Route.extend
  model: (params) ->
    url = 'https://api.github.com/repos/emberjs/ember.js/commits/' + params.sha
    Ember.$.getJSON(url)

  serialize: (model) ->
    { sha: model.sha }

`export default Commit`
