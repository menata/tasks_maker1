   $(document).ready(function(){
        $("#report tr:odd").addClass("odd");
        $("#report tr:not(.odd)").hide();
        $("#report tr:first-child").show();
        $("#report tr.odd").mouseover(function(){
            $(this).next("tr").toggle();
            $(this).find(".arr").toggleClass("up"); 
        });
        $("#report tr:not(.odd)").mouseover(function(){ 
            $(this).show();
        });
        $("#report input#ff").click(function(){
            $(this).val('');            
        });     
        $("#report").mouseout(function(){
            $("#report tr:not(.odd)").hide();
        });
        $("#report div#l").mouseover(function(){
            $(this).css('background','#ffffcc');
        });
        $("#report div#l").mouseout(function(){
            $(this).css('background','#ffffff');
        });
        $("#report tr#1").css('display','none');  

        $("#newtForm").validate();
 
            //$("#report").jExpand();
        });
