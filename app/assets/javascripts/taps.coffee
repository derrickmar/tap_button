# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

get_random_profile = ->
  site.profiles[Math.floor(Math.random()*site.profiles.length)]

tokens = ["594821586bdf"]

random_profile = get_random_profile()
$("#tap-img").attr("src", random_profile["photo_url"])

# $.ajax(
#     url: "https://watsi.org/fund-treatments.json",
#     type: 'GET'
#     dataType: 'jsonp',
#     success: (response) ->
#       console.log response
#   )
# $(".image-container")
