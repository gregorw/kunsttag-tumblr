# Kunsttag – © 2013 Gregor Wassmann
$ ->
  options = 
    "autoResize": true,
    "align": "left",
    "offset": 30,
    "flexibleWidth": 400,
    "resizeDelay": 25,
    # "fillEmptySpace": true,
    "container": $("#events")

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
 