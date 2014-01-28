TwelveSpokes.Views.App ||= {}

class TwelveSpokes.Views.App.IndexView extends Backbone.View
  template: JST["backbone/templates/apps/index"]

  initialize: ->
    @beerSearchView = new TwelveSpokes.Views.App.BeerSearchView()

  render: ->
    $(@el).html(@template({ name: TwelveSpokes.Globals.userName }))
    @$('.js-beer-search').html(@beerSearchView.render().el)
    this
