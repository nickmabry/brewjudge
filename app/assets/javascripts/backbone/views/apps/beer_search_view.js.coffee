TwelveSpokes.Views.App ||= {}

class TwelveSpokes.Views.App.BeerSearchView extends Backbone.View
  template: JST["backbone/templates/apps/beer_search"]

  render: ->
    $(@el).html(@template())
    this
