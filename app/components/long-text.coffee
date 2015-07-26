`import Ember from 'ember'`

LongText = Ember.Component.extend
  showMoreText: false
  actions: {
    toggleMore: ->
      @toggleProperty('showMoreText')
  }

`export default LongText`
