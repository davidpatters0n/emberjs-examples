`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'books', ->
    @route('book', {path: '/:id'})
    @route('new')

  #Ignore Below this was old chapers
  @route('about')
  @resource('products')
  @resource('product', {path: '/:id'}, ->
    @route('reviews')
    @route('new')
  )
  @resource('commits', ->
    @route('commit', {path: ':sha'})
  )

`export default Router`


###
In the above we have defined a Books resource with two nested resources as:

- books
  - books.book
  - books.new
###
