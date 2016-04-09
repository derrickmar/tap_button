ready = ->
  site = window.site

  body = $('body')
  controller = body.attr('data-controller')
  action     = body.attr('data-action')

  # site.common.init()
  console.log controller
  console.log action

  if site[controller]
    site[controller].init() if site[controller].init?
    site[controller][action]() if site[controller][action]?

$(document).ready(ready)
