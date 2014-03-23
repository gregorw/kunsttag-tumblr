$ ->
  unless $.cookie 'newsletter-sign-up'
    modal = $('#newsletter-overlay')
    modal.show()
    
    $('#newsletter-form').submit (event) ->
      event.preventDefault()
      form = $(this)
      if valid(form)
        $.post(
          form.attr 'action'
          form.serialize()
        ).always ->
          modal.fadeOut()
          $.cookie 'newsletter-sign-up', 'successful', { expires: 180, path: '/' }

    $('#newsletter-overlay .cancel').click ->
      modal.fadeOut()
      $.cookie 'newsletter-sign-up', 'cancelled', { expires: 7, path: '/' }

    valid = (form) ->
      true
