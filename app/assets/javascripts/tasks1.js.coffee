$(document).ready ->
  $("#sbmt2 input").click (e) ->
    x = $("#task_tname").val()
    y = $("#task_priority").val()
    if (not x? or x is "") or (not y? or y is "")
      $("#l2").show()
      e.preventDefault()
    else
      $(".edit_task").submit()

  $("#task_tname").click ->
    $("#l2").hide()

  $("#task_priority").click ->
    $("#l2").hide()
