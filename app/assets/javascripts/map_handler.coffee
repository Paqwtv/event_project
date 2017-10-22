namespace 'MapHandler', (exports) ->
  #filter behaviour
  get_all_filter_data = (form_id) ->
    data = {} 

    $(form_id).find( '[name]' ).each( ( i , v ) ->
      input = $( this )
      name = input.attr( 'name' )
      value = input.val()
      data[name] = value)
    return data

  make_link = (form_id) ->
    form = $(form_id)
    form.on( 'submit', (e) ->
      data = get_all_filter_data(form_id)
      console.log(data)
      $.ajax({
        data: data,
        method: "GET",#"PATCH",
        url: "/events", #"/events/1.json"
        #dataType: "json",
        success:  (data) ->
          console.log(data)
          alert("yeeee")
          $("#dashbord").html(data)
        })
      e.preventDefault()
    )



  exports.init = (id) ->
    console.log("init")
    make_link(id)