$ ->

  createScript = (id, src) ->
    # We cannot use jQuery for most of this, since it would filter out scripts
    return if $("##{id}").length == 0
    js = document.createElement 'script'
    js.id = id
    js.src = src
    fjs = $('script:first')[0]
    fjs.parentNode.insertBefore js, fjs

  url = document.location.href.split('?')[0]

  if $('.fb-like').length > 0
    $('.fb-like').data('href', url)
    createScript 'facebook-jssdk', '//connect.facebook.net/ch_DE/all.js#xfbml=1&appId=358683750907560'
  if $('.twitter-share-button').length > 0
    $('.twitter-share-button').data('url', url)
    createScript 'twitter-wjs', '//platform.twitter.com/widgets.js'
