 $(".job-alert-drawer-link").on("click", function(e) {
  var drawer = $(this).parent('li').find('.job-alert-drawer');
  drawer.slideDown(1000);
});

$(".closealertdrawer").on("click", function(e) {
  var drawer = $(this).parent().parent().parent().find('.job-alert-drawer');
  drawer.slideUp(1000);
});

