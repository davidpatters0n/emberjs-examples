`import Ember from 'ember'`

IndexRoute = Ember.Route.extend

  model: ->
    {
      MRP: "$100",
      price: "$80",
      sale: "$20"
    }
  renderTemplate: ->
    this.render('sidebar',
      outlet: "sidebar"
    )
    @render 'index'

`export default IndexRoute`
