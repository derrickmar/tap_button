# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

site = window.site
site.users = new Object

site.users.show = ->
  get_random_profile = ->
    site.common.profiles[Math.floor(Math.random()*site.common.profiles.length)]

  # random_profile = get_random_profile()
  # console.log $("tap-img")
  # console.log random_profile["photo_url"]
  # $("#tap-img").attr("src", random_profile["photo_url"])
  # $(".image-container").attr("href", random_profile["url"])
  # $("#donee-name").text(random_profile["name"])

  $('#demo').jQMeter({
    goal:'$10,000',
    raised:'$10,000',
    orientation: "horizontal",
    width: "300px",
    displayTotal: false
  });

  # $('#demo').jQMeter({
  #   width: "100%",
  #   bgColor: "#444",
  #   barColor: "#bfd255",
  #   orientation: "vertical",
  # });


