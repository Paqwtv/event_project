
$('.toggle').on 'click', ->
  $('.container').stop().addClass 'active'
  return
$('.close').on 'click', ->
  $('.container').stop().removeClass 'active'
  return