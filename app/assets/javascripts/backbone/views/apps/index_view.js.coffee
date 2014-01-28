TwelveSpokes.Views.App ||= {}

class TwelveSpokes.Views.App.IndexView extends Backbone.View
  template: JST["backbone/templates/apps/index"]

  render: ->
    $(@el).html(@template({ name: TwelveSpokes.Globals.userName }))
    return this
