class FormValidator
  constructor: (@form,@input1,@input2,@worn1,@worn2)->
   @bind_events()     
  bind_events: ()=>
   @input1.click @hide_text 
   @input2.click @validate_input
  hide_text: (evt)=>  
   @worn1.hide()
   @worn2.hide()  
  validate_input: (evt)=>    
   x = @input1.val()     
   if not x? or x is "" 
    @worn1.show()
    evt.preventDefault() 
   else if (@input1.val().length > 40)   
    @worn2.show()
    @input1.val("")
    evt.preventDefault() and evt.stopPropagation()   
   else 
    @form.submit()

$(document).ready ->
  new FormValidator($(".new_pitem"),$("#pitem_pname"), $("#sbmt1 input"),$("#l"),$("#m"))
  new FormValidator($(".edit_pitem"),$("#pitem_pname"), $("#sbmt1 input"),$("#l"),$("#m"))

