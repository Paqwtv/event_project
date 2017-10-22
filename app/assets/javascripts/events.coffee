# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

namespace 'Event.MapBuilder', (exports) ->

  exports.init = (s_markers)->
    handler = Gmaps.build('Google')
    handler.buildMap {provider: { maxZoom: 12 }, internal: {id: 'map'}}, ->
      markers = handler.addMarkers(s_markers)
      handler.bounds.extendWith(markers)
      handler.fitMapToBounds()
