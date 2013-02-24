$(document).ready ->
  $(".text1").fadeIn 3000
  $("#ba").click (e) ->
    x = $(this).siblings(".dd").val()
    id = $("#dialog")
    maskHeight = $(document).height()
    maskWidth = $(window).width()
    if not x? or x is ""
      $("#mask").css
        width: maskWidth
        height: maskHeight

      $("#mask").fadeIn 500
      $("#mask").fadeTo "fast", 0.8
      winH = $(window).height()
      winW = $(window).width()
      $(id).css "top", winH / 2 - $(id).height() / 2
      $(id).css "left", winW / 2 - $(id).width() / 2
      $(id).fadeIn 500
      e.preventDefault()
    else
      $("#s").submit()

  $(".window .close").click (e) ->
    e.preventDefault()
    $("#mask, .window").hide()

  $("#mask").click ->
    $(this).hide()
    $(".window").hide()