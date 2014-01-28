class TwelveSpokes.Models.SearchResult extends Backbone.Model
  paramRoot: 'search_result'

class TwelveSpokes.Collections.SearchResultsCollection extends Backbone.Collection
  model: TwelveSpokes.Models.SearchResult

  initializeFromSearch: (searchTerm) ->
    $.post '/search', { term: searchTerm }, @onInitialize

  onInitialize: (data) =>
    @reset data
