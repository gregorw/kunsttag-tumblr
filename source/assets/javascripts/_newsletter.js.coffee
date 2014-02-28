$ ->
  unless $.cookie 'newsletter-sign-up'
    modal = $('#newsletter-overlay')
    modal.show()
    
    $('#newsletter-form').submit (event) ->
      event.preventDefault()
      form = $(this)
      $.post(
        form.attr 'action'
        form.serialize()
      ).always ->
        modal.fadeOut()
        $.cookie 'newsletter-sign-up', 'successful', { expires: 60, path: '/' }

    $('#newsletter-overlay .cancel').click ->
      modal.fadeOut()
      $.cookie 'newsletter-sign-up', 'cancelled', { path: '/' }
