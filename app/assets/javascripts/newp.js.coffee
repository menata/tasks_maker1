class FormValidator
initialize: (element)->
  console.log "1"
  @bind_events()    
bind_events: ()=>
  console.log "2"
  $("#pitem_pname").click @hide_text 
  $("#sbmt1 input").click @validate_input
hide_text: (evt)=>
  console.log "3"
  $("#l").hide()  
validate_input: (evt)=>    
  x = $("#pitem_pname").val()     
  if not x? or x is ""
    console.log "5"      
    $("#l").show()
    evt.preventDefault() 
  else
    $("#new_pitem").submit()

$(document).ready ->
  new FormValidator($(".new_pitem"))
