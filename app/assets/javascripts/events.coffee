# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

namespace 'Event.MapBuilder', (exports) ->
  exports.init_map = () -> 
    uluru = {lat: -25.363, lng: 131.044};
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 4,
      center: uluru
    })
     marker = new google.maps.Marker({
       position: uluru,
       map: map
       })
