`import Ember from 'ember'`

AboutUs = Ember.Component.extend
  tagName: 'p'
  #classNames: ["intro", "text"]
  classNameBinding: ["intro", "text"]
  intro: 'intro-css-class'
  text:  'text-css-class'

`export default AboutUs`
