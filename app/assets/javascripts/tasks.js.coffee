class FormValidator
  constructor: (@form,@tname,@tpriority,@sbmt,@div)->
   @bind_events()     
  bind_events: ()=>  
   @tname.click @hide_text
   @tpriority.click @hide_text
   @sbmt.click @validate_input  
  hide_text: (evt)=>     
   @div.hide()  
  validate_input: (evt)=> 
   if (not @tname.val()? or @tname.val() is "") or
      (not @tpriority.val()? or @tpriority.val() is "")
    @div.show()
    evt.preventDefault() 
   else
    @form.submit()

$(document).ready ->
  new FormValidator($("#newtForm"),$("#task_tname"),$("#task_priority"),$("input[value='Save']"),$("#l1"))
  new FormValidator($(".edit_task"),$("#task_tname"),$("#task_priority"),$("input[value='Save']"),$("#l2"))
 
