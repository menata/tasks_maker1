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
           //  $(this).load(function(){
           //   $(this).val('Start typing here to Add Task..');
           //  });            
        });

        $("#report").mouseout(function(){
            $("#report tr:not(.odd)").hide();
        });

        $("#report p#l").mouseover(function(){
            $(this).css('background','#ffffcc');
        });
        $("#report p#l").mouseout(function(){
            $(this).css('background','#ffffff');
        });
            //$("#report").jExpand();
        });
