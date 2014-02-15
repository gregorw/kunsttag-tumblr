# Kunsttag – © 2013 Gregor Wassmann

$ ->  
  # Index Page
  if $('body.index').length == 1
    options = index_options
    events = $(".post")
    events.wookmark options
    $("#events").imagesLoaded ->
      events.wookmark options  
  else 
    options = permalink_options

  $("#navigation-toggle").on 'click', ->
    $("body").toggleClass("nav-open", $("#navigation").toggle())
    
  $("#heute").attr('href', "/tagged/#{today()}")
  $("#morgen").attr('href', "/tagged/#{tomorrow()}")
    
  window.onscroll = ->
    $('body').toggleClass 'scrolled', $(window).scrollTop() > 5

today = ->
  swissDate()
  
tomorrow = ->
  swissDate(1)

twoDigits = (n) ->
   if n < 10 then '0' + n else n

# Date format DD.MM.YYYY
swissDate = (days_from_now = 0, date = new Date()) ->
  date.setDate(date.getDate() + days_from_now)
  dd = twoDigits(date.getDate())
  mm = twoDigits(date.getMonth() + 1)
  [dd, mm, date.getFullYear()].join '.'
