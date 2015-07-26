`import Ember from 'ember'`


TruncateHelper = (value, options) ->
  length = 40

  if (!Ember.isEmpty(options.hash.length))
    console.log options.hash
    length = options.hash.length

  if (!Ember.isEmpty(value))
    if (value.length < length)
      value
    value.substring(0, length) + "...."

`export default TruncateHelper`
