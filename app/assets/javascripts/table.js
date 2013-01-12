   $(document).ready(function(){
        $("#report a#cl").click(function()
        {
          if(!$(this).closest("tr").next("tr").hasClass("zzz"))
          {
             $(this).closest("tr").next("tr").addClass("zzz");
          }
          else
          {
             $(this).closest("tr").next("tr").removeClass("zzz");             
          }
        });
        $("#report tr:odd").addClass("odd");
        $("#report tr:not(.odd)").hide();        
        $("#report tr:first-child").show();
        $("#report tr.odd").mouseover(function(){
            if(!$(this).next("tr").hasClass("zzz"))
            {
              $(this).next("tr").toggle();
              $(this).find(".arr").toggleClass("up");
            } 
        });
        $("#report tr:not(.odd)").mouseover(function(){ 
            $(this).show();
        });
        $("#report input#ff").click(function(){
            $(this).val('');            
        });     
        $("#report").mouseout(function(){          
            $("#report tr:not(.odd)").hide();
            $("#report tr.zzz").show();
        });
        $("#report div#l").mouseover(function(){
            $(this).css('background','#ffffcc');
        });
        $("#report div#l").mouseout(function(){
            $(this).css('background','#ffffff');
        });
        $("#report tr#1").css('display','none');   
                                     
     });

