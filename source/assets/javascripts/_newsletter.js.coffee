$ ->
  unless $.cookie 'newsletter-signed-up'
    $('#newsletter-overlay').show().click ->
      $(this).fadeOut()
    
    