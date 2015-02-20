$(document).ready(function(){
    $("#viewmore").click(function(){
        $("p").toggle();
    });
});

$('.hide_show').click(function() {
    id1 = $(this).attr('data-1');
    id2 = $(this).attr('data-2');
    $(id1).toggle();
    $(id2).toggle();
});
// HOW TO USE
//
// Create your first link with the attribute data-1 with it's id name in it
// Create your first link with the attribute data-2 with it's id name in it
// <a href="#" data-1="#this" data-2="#that" class="hide_show" id="this">This Button</a>
// <a href="#" style="display:none;" data-1="#this" data-2="#that" class="hide_show" id="that">That Button</a>