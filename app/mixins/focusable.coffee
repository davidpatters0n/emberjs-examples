`import Ember from 'ember'`

valid: (number) ->
  if isNaN(number)
    false
  else
    true
