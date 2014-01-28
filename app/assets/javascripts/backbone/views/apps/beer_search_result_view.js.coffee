TwelveSpokes.Views.App ||= {}

class TwelveSpokes.Views.App.BeerSearchResultView extends Backbone.View
  template: JST["backbone/templates/apps/beer_search_result"]

  render: ->
    $(@el).html(@template({ name: @model.get 'name' }))
    this
