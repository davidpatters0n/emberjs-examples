`import Ember from 'ember'`

EmberImage = Ember.Component.extend
  tagName: 'img'
  attributeBindings: ["src", "height", "width"]
  src: 'http://emberjs.com/images/logos/ember-logo.png'
  height: ''
  width: ''

`export default EmberImage`
