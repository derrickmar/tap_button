site = window.site
site.groups = new Object

site.groups.show = ->
  console.log 'calling?'
  $('.demo').jQMeter({
    goal:'$10,000',
    raised:'$10,000',
    orientation: "horizontal",
    width: "300px",
    displayTotal: false
  });
