TwelveSpokes.Views.App ||= {}

class TwelveSpokes.Views.App.BeerSearchView extends Backbone.View
  template: JST["backbone/templates/apps/beer_search"]

  initialize: ->
    @collection = new TwelveSpokes.Collections.SearchResultsCollection()
    @collection.on 'reset', @renderCollection

  events:
    'submit form' : 'performSearch'

  render: ->
    $(@el).html(@template())
    this

  performSearch: (event) =>
    event.preventDefault()

    searchTerm = @$('input[name=name]').val()
    console.info "Requested beer search for \"#{searchTerm}\"."

    @collection.initializeFromSearch searchTerm

  renderCollection: =>
    @childViews = []
    @collection.forEach @renderResult

  renderResult: (searchResult) =>
    resultView = new TwelveSpokes.Views.App.BeerSearchResultView
      model: searchResult
    @$('.js-search-results').append(resultView.render().el)
    @childViews.push resultView
