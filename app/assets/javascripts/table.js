         $(document).ready(function(){
          $('div[id*="p"]').each(function(index, el) {
              animatedcollapse.addDiv(el.id);            
            }); 
          //dock project name row
         $("#report a#cl").click(function()
          {
          if(!$(this).closest("tr").next("tr").hasClass("zzz"))
          {
             $(this).closest("tr").next("tr").addClass("zzz");
              $(this).closest("tr").next("tr").find(".l").each(function(index,el){
               animatedcollapse.show(el.id);
               });  
          }
          else
          {
             $(this).closest("tr").next("tr").removeClass("zzz");                           
          }
        });
        //show-hide rows
        $("#report tr:odd").addClass("odd");
        $("#report tr:not(.odd)").hide();        
        $("#report tr:first-child").show();
        $("#report tr.odd").mouseover(function(){
        //leave docket row visible     
        if(!$(this).next("tr").hasClass("zzz"))
            {
              $(this).next("tr").toggle();
              $(this).find(".arr").toggleClass("up");
            }  
              
        });
        $("#report tr.odd").click(function(){ 
        $(this).next('tr').find(".l").each(function(index,el){
               animatedcollapse.hide(el.id);
               }); 
          }); 
        $("#report tr:not(.odd)").mouseover(function(){ 
             $(this).show();
             $(this).find(".l").each(function(index,el){
              animatedcollapse.show(el.id);
               });
        });
      
        $("#report input#ff").click(function(){
            $(this).val('');            
        });     
        $("#report").mouseout(function(){          
            $("#report tr:not(.odd)").hide();
            $("#report tr.zzz").show();           
        });
        $("#report div.l").mouseover(function(){
            $(this).css('background','#FFD699');
        
        });
        $("#report div.l").mouseout(function(){
            $(this).css('background','');
        });
        $("#report tr#1").css('display','none');   
                                     
     });

