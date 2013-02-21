class FormValidator
  constructor: (@form, @input1,@input2,@div)->
    @bind_events()     
  bind_events: ()=>
   @input1.click @hide_text 
   @input2.click @validate_input
  hide_text: (evt)=>  
   @div.hide()  
  validate_input: (evt)=>    
   x = @input1.val()     
   if not x? or x is "" 
    @div.show()
    evt.preventDefault() 
   else
    @form.submit()

$(document).ready ->
  new FormValidator($(".new_pitem"),$("#pitem_pname"), $("#sbmt1 input"),$("#l"))
  new FormValidator($(".edit_pitem"),$("#pitem_pname"), $("#sbmt3 input"),$("#l3"))
