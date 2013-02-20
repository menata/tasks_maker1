$(document).ready ->
  $("#sbmt input").click (e) ->
    x = $("#task_tname").val()
    y = $("#task_priority").val()
    if (not x? or x is "") or (not y? or y is "")
      $("#l1").show()
      e.preventDefault()
    else
      $("#newtForm").submit()

  $("#task_tname").click ->
    $("#l1").hide()

  $("#task_priority").click ->
    $("#l1").hide()

 
  

