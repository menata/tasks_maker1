class FormValidator
  constructor: (@form,@tname,@tpriority,@sbmt,@worn1,@worn2,@worn3)->
   @bind_events()     
  bind_events: ()=>  
   @tname.click @hide_text
   @tpriority.click @hide_text
   @sbmt.click @validate_input
  hide_text: (evt)=>     
   @worn1.hide()
   @worn2.hide() 
   @worn3.hide() 
  validate_input: (evt)=> 
   if (not @tname.val()? or @tname.val() is "") or (not @tpriority.val()? or @tpriority.val() is "")
    @worn1.show()
    evt.preventDefault() and evt.stopPropagation()  
   else if (@tpriority.val() isnt "high") and (@tpriority.val() isnt "middle") and (@tpriority.val() isnt "low")
    @worn2.show()
    evt.preventDefault() and evt.stopPropagation()
   else if (@tname.val().length > 40)   
    @worn3.show()
    @tname.val("")
    evt.preventDefault() and evt.stopPropagation()   
   else 
    @form.submit()
    
$(document).ready ->
  new FormValidator($("#newtForm"),$("#task_tname"),$("#task_priority"),$("input[value='Save']"),$("#l1"),$("#l0"),$("#m"))
  new FormValidator($(".edit_task"),$("#task_tname"),$("#task_priority"),$("input[value='Save']"),$("#l1"),$("#l0"),$("#m"))

$(".edit_task").click ->
  $(this).parent("form").submit()

 
