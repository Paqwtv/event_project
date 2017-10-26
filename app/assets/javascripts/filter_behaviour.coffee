namespace 'FilterBehaviour', (exports) ->
  #TODO REFACTORING
  get_all_checkboxes = (class_name) ->
    arr = []
    $("input#{class_name}:checkbox:checked").each( () ->
        arr.push($(this).val()) )
  #filter behaviour
  get_all_filter_data = (form_id) ->
    data = {} 

    $(form_id).find( '[name]' ).each( ( i , v ) ->
      input = $( this )
      name = input.attr( 'name' )
      if input.attr('type') == 'checkbox'
        value = get_all_checkboxes(imput.attr('class'))
      else 
        value = input.val()

      data[name] = value)
    data["ajax"] = true
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
        dataType: "json",
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