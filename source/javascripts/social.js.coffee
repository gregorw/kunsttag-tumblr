$ ->
  devmode = false
  url = document.location.href.split('?')[0]
            
  if $('.fb-like').length > 0
    $('.fb-like').attr('data-href', url)
    
  $.ajaxSetup
    cache: true

  $.getScript '//connect.facebook.net/ch_DE/all.js', ->
    if devmode
      FB.init
        appId      : '301556923316152'                     # App ID from the app dashboard
        channelUrl : 'http://localhost:4567/channel.html'       # Channel file for x-domain comms
        status     : true                                  # Check Facebook Login status
        xfbml      : true                                  # Look for social plugins on the page
    else
      FB.init
        appId      : '358683750907560'                     # App ID from the app dashboard
        channelUrl : 'http://kunsttag.com/channel.html'         # Channel file for x-domain comms
        status     : true                                  # Check Facebook Login status
        xfbml      : true                                  # Look for social plugins on the page

createScript = (id, src) ->
  # We cannot use jQuery for most of this, since it would filter out scripts
  return if $("##{id}").length == 0
  js = document.createElement 'script'
  js.id = id
  js.src = src
  fjs = $('script:first')[0]
  fjs.parentNode.insertBefore js, fjs

