namespace 'Get.GeoLocation', (exports) ->

  exports.init = ->
    getGeoLocation = ->
      navigator.geolocation.getCurrentPosition setGeoCookie

    setGeoCookie = (position) ->
      cookie_val = position.coords.latitude + '|' + position.coords.longitude
      document.cookie = 'lat_lng=' + escape(cookie_val)