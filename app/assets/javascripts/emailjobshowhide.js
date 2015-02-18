 $(".email-drawer-link").on("click", function(e) {
  var drawer = $(this).parent('li').find('.email-drawer');
  drawer.slideDown(1000);
});

$(".closedrawer").on("click", function(e) {
  var drawer = $(this).parent().parent().parent().find('.email-drawer');
  drawer.slideUp(1000);
});
    
             
         // $("#openemaildrawer").toggle(function(){
         //     debugger;
         //    var divud = $(this).text().split(' ')[1];
         //        $('#drawer').slideDown("slow");
         //        $('#'+divud).removeClass('hidden');
         //      $('#'+divud).slideDown("slow");
                
         //    }, function(){
         //         debugger;
         //         var divud = $(this).text().split(' ')[1];
         //        $('#drawer').slideUp("slow");
         //        $('#'+divud).addClass('hidden');
         //      $('#'+divud).slideUp("slow");
         //    });

    
         //    function slideIt(i){
         //       var el =$(".patient:eq("+i+")");
         //       if(el != undefined)
         //            el.delay(1000).slideDown(1000);
         //       setTimeout(function(){slideIt(++i)}, 300);
         //    }
            
            
         //    slideIt(0);
            
    
         //  });