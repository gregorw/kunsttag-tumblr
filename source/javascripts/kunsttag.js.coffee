# Kunsttag – © 2013 Gregor Wassmann
$ ->
  index_options = 
    autoResize: true,
    offset: 30,
    flexibleWidth: 300,
    resizeDelay: 25,
    container: $("#events")

  permalink_options = $.extend({}, index_options, { flexibleWidth: 600 })
  
  # Index Page
  if $('body.index').length == 1
    options = index_options
  else 
    options = permalink_options
  
  events = $(".post")
  events.wookmark options
  $("#events").imagesLoaded ->
    events.wookmark options

  $("#navigation-toggle").on 'click', ->
    $("#navigation").toggle()
    
  $("#heute").attr('href', "/tagged/#{today()}")
  $("#morgen").attr('href', "/tagged/#{tomorrow()}")

today = ->
  swissDate()
  
tomorrow = ->
  swissDate(1)

# Date format DD.MM.YYYY
swissDate = (days_from_now = 0, date = new Date()) ->
  date.setDate(date.getDate() + days_from_now)
  [date.getDate(), date.getMonth() + 1, date.getFullYear()].join '.'
