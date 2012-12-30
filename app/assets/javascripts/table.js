   $(document).ready(function(){
        $("#report tr:odd").addClass("odd");
        $("#report tr:not(.odd)").hide();
        $("#report tr:first-child").show();

        $("#report tr.odd").mouseover(function(){
            $(this).next("tr").toggle();
            $(this).find(".arrow").toggleClass("up"); 
        });

        $("#report tr:not(.odd)").mouseover(function(){ 
            $(this).show();
        });

        $(".span2").click(function(){
            $(this).val(''); 
        });

        $("#report").mouseout(function(){
            $("#report tr:not(.odd)").hide();
        });
            //$("#report").jExpand();
        });
