// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .
//= require emailjobshowhide
$(document)
  .foundation(
  {
    bindings:'events',
    abide : {
			// patterns: {
			// 	cbpassword: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,15}$/
			// },
			validators: {
        passwordcb: function(el, required, parent) {
					var a = el.value;
					var lower = /[a-z]/.test(a);
					var upper = /[A-Z]/.test(a);
					var symnum = /[0-9$&+,:;=?@#|\/\\\"\'<>.^*()%!-]/.test(a);
					var length = a.length;
					if(lower === true) {
						var b = document.getElementById('lowercase-count');
						b.classList.add('green')
						b.classList.remove('red');
					}
					else {
						var b = document.getElementById('lowercase-count');
						b.classList.add('red')
						b.classList.remove('green');
					}
					if(upper === true) {
						var c = document.getElementById('uppercase-count');
						c.classList.add('green')
						c.classList.remove('red');
					}
					else {
						var c = document.getElementById('uppercase-count');
						c.classList.add('red')
						c.classList.remove('green');
					}
					if(symnum === true) {
						var d = document.getElementById('number-or-symbol');
						d.classList.add('green')
						d.classList.remove('red');
					}
					else {
						var d = document.getElementById('number-or-symbol');
						d.classList.add('red')
						d.classList.remove('green');
					}
					if(length >= 8 && length <= 15) {
						var e = document.getElementById('character-count');
						e.classList.add('green')
						e.classList.remove('red');
					}
					else {
						var e = document.getElementById('character-count');
						e.classList.add('red')
						e.classList.remove('green');
					}
        }
      }
    },
    accordion: {
			// allow multiple accordion panels to be active at the same time
			multi_expand: false,
			// allow accordion panels to be closed by clicking on their headers
			// setting to false only closes accordion panels when another is opened
			toggleable: false
		},
		
  });


// Mobile Search Dropdown Visiblity Toggle
function toggle_visibility(button, id) {
  var e = document.getElementById(id);
  var f = document.getElementById(button);
  if(e.classList.contains('global-search-toggle')) {
    // e.style.display = 'none';
    e.classList.remove('global-search-toggle');
    f.style.color = '#FFFFFF';
  }
  else {
    e.classList.add('global-search-toggle');
    // e.style.display = 'block';
    f.style.color = '#888888';
  }
}
// Password Show Hide Button State Change
function toggle_password_text(id) {
	var p = document.getElementById(id);
	if(p.innerHTML == '<i class="fa fa-eye"></i> Show') {
		p.innerHTML = '<i class="fa fa-eye-slash"></i> Hide';
	}
	else {
		p.innerHTML = '<i class="fa fa-eye"></i> Show';
	}
}

// Page Change on Navigation Dropdown Change
function dropdownPageChange() {
	var a = $('#dropdown_nav').val();
	window.location.href = window.location.pathname + "?page=" + a;
}

// Save Email Settings when Checkbox is clicked
function checkboxChange(id){
	$(id).submit();
}

$(document).ready(function() {
    $("#job_alert_btn").click(function(){
    $("#job_alert_btn").replaceWith( '<a class="job_alert_active">Job Alert Created</a>');
    });
    $("#create-alert-dropdown").click(function(){
    $("#job_alert_btn").replaceWith( '<a class="job_alert_active">Job Alert Created</a>');
    });
    $(".job_alert_active").click(function(){
    $(".job_alert_active").replaceWith( '<a href="#" class="button secondary small" id="job_alert_btn">Create Job Alert</a>');
    });
    $("#job_saved_btn").click(function(){
    $("#job_saved_btn").replaceWith( '<a class="job_save_active">Job Saved</a>');
    });
    $("#report-job-link").click(function(){
    $("#jobreport").toggle();
    });
    $("#job-report-submit").click(function(){
    $("#jobreport").hide();
    });
    $("#job-report-cancel").click(function(){
    $("#jobreport").hide();
    });
    $(".email-drawer-link-jdp").click(function(){
    $(".email-drawer-jdp").show();
    });
    $(".closedrawerjdp").click(function(){
    $(".email-drawer-jdp").hide();
    });
    $(".moresnapshot").click(function(){
    $("#jobsnapshot").toggle();
    });
    $(".lesssnapshot").click(function(){
    $("#jobsnapshot").hide();
    });
    $(".delete-rec1").click(function(){
    $(".rec-row1").hide();
    });
    $(".delete-rec2").click(function(){
    $(".rec-row2").hide();
    });
    $(".delete-rec3").click(function(){
    $(".rec-row3").hide();
    });
    //rec prefs add location desktop
    $(".add-location").click(function(){
    $(".add-location-view").show();
    });
    $(".add-location").click(function(){
    $(".add-location").toggle();
    });

    //rec prefs add title desktop
    $(".add-title").click(function(){
    $(".add-title-view").show();
    });
    $(".add-title").click(function(){
    $(".add-title").toggle();
    });
    $(".save-title").click(function(){
    $(".add-title").show();
    $(".new-title-row").show();
    });
    //rec prefs add skills desktop
    $(".add-skill").click(function(){
    $(".add-skill-view").show();
    });
    $(".add-skill").click(function(){
    $(".add-skill").toggle();
    });
    $(".save-skill").click(function(){
    $(".add-skill").show();
    $(".new-skill-row").show();
    $(".skill-replace").hide();
    });
    //viewmore rec prefs skills
    $(".view-more-prefs1").click(function(){
    $(".add-more-skill").show();
    $(".view-more-prefs1").hide();
    $(".view-less-prefs1").show();
    });
    $(".view-less-prefs1").click(function(){
    $(".add-more-skill").hide();
    $(".view-more-prefs1").show();
    $(".view-less-prefs1").hide();
    });
    //viewmore rec prefs history
    $(".view-more-prefs2").click(function(){
    $(".add-more-history").show();
    $(".view-more-prefs2").hide();
    $(".view-less-prefs2").show();
    });
    $(".view-less-prefs2").click(function(){
    $(".add-more-history").hide();
    $(".view-more-prefs2").show();
    $(".view-less-prefs2").hide();
    });
    $("#quickapplybtn").click(function(){
    $("#quickapplybtn").hide();
    $("#quickapplied").show();
    });


 
 
    $("#cityStates").click(function(){
     $(".duplicate").remove();

    });

    $(".save-location").click(function(){

        var city = $("#cityStates").val();
         if("Phoenix, AZ" == city)
            $("#dynamic-add").append("<p class=\"duplicate\">Duplicate entry</p>");
         else if(city != "")
            $("#desiredLocations dt" ).append("<dd class=\"row rec-row1\"><a href=\"#\" class=\"location small-9 columns\">" +$("#cityStates").val() + "</a><a class=\"remove small-1 columns delete-rec1\"><i class=\"fa fa-times\"></i></a></dd>");
        else 
            $("#dynamic-add").append("<p class=\"duplicate\">Null entry</p>");
        $("#cityStates").val("") ;
    });

 


});
    // $("#emailopen").click(function(){
    // $("#emailopened").toggle('fast');
    $('#location-filter input[type="checkbox"]').change(function() {
			if($(this).attr("name") != "all") {
				$('#location-filter .filter-all').prop('checked', false);
			}
			if($(this).attr("name") == "all") {
				$('#location-filter .filter').prop('checked', false);
			}
    });
    $('#job-type-filter input[type="checkbox"]').change(function() {
        if($(this).attr("name") != "all") {
            $('#job-type-filter .filter-all').prop('checked', false);
        }
        if($(this).attr("name") == "all") {
            $('#job-type-filter .filter').prop('checked', false);
        }
    });
    $('#job-level-filter input[type="checkbox"]').change(function() {
        if($(this).attr("name") != "all") {
            $('#job-level-filter .filter-all').prop('checked', false);
        }
        if($(this).attr("name") == "all") {
            $('#job-level-filter .filter').prop('checked', false);
        }
    });
// });
  jQuery(function($) {
    $("select[multiple]").bsmSelect({
    });

    $('.side-nav li, #job-type-filter label, #location-filter label, #job-level-filter label').click(function() {
        $('#spinner').toggle();
        $('#gs-job-results').toggle();
        setTimeout(function() {
            $('#spinner').toggle();
            $('#gs-job-results').toggle();
        }, 500);
    });    

    $('.sub-nav dd a').click(function(e) {
        $('#spinner').toggle();
        $('#gs-job-results').toggle();
        setTimeout(function() {
            $('#spinner').toggle();
            $('#gs-job-results').toggle();
        }, 500);
       // e.preventDefault();
    });    

    $('#gs-language-picker').click(function(e) {
        $('#gs-language-picker-submenu').slideToggle();
        e.preventDefault();
    });   

    $('#job-type-filter label').click(function(e) {
     //  console.log("Here I maasnd as,d");
    });
    var count=1;
    $('#count-up').click(function(e) {
        count=count+1;
        if (count>=1){
            $("#current").html(count);
            e.preventDefault();
        }
    });

    $('#count-down').click(function(e) {
        count=count-1;
        if (count>=1){
        $("#current").html(count);
        e.preventDefault();
        }
    });
    $('.button.postfix#double-half-bump').click(function() {
			skill = $('#skills_entry').val();
			tag_append = '<li><a>' + skill + '</a></li>';
			$('#skills.tags').append(tag_append);
    });
/*
    $('#scroll-spy-bar').scrollspy({
        min: $('#scroll-spy-bar').offset().top,
        max: $(document).height(),
        onEnter: function(element, position) {
            $("#scroll-spy-bar").addClass('fixed');
        },
        onLeave: function(element, position) {
            $("#scroll-spy-bar").removeClass('fixed');
        }
    });
*/
    $('#add-new-position').click(function(e) {
        $('.work-experience-add').removeClass("hide");
    });  

    $('#save-new-position').click(function(e) {
        $('.work-experience-add').addClass("hide");
        $('.work-experience ').children().clone().appendTo("#experience");
    });    
    $('#cancel-new-position').click(function(e) {
        $('.work-experience-add').addClass("hide");
    });


    $(document).on('click', '.delete-experience', function(){ 
        $(this).parents().eq(3).remove(); 
    });

    $(document).on('click', '.edit-experience', function(){ 
        var shell =$(this).parents().eq(3);
        shell.after($(".work-experience-edit").clone().removeClass("hide"));
        shell.addClass("hide"); 
    });

    $(document).on('click', '#save-edit-position', function(){ 
        var shell =$(this).parents().eq(2);
        shell.prev().removeClass("hide");
        shell.remove();
    });    
    $(document).on('click', '#cancel-edit-position', function(){ 
        var shell =$(this).parents().eq(2);
        shell.prev().removeClass("hide");
        shell.remove();
    }); 
//---------Sholastic Achievements

    $('#add-new-scholastic-achievement').click(function(e) {
        $('.scholastic-achievement-add').removeClass("hide");
    });  

    $('#save-new-sholastic-achievement').click(function(e) {
        $('.scholastic-achievement-add').addClass("hide");
        $('.scholastic-achievement').children().clone().appendTo("#scholastic-highlights");
    });    
    $('#cancel-new-sholastic-achievement').click(function(e) {
        $('.scholastic-achievement-add').addClass("hide");
    });


    $(document).on('click', '.delete-sholastic-achievement', function(){ 
        $(this).parents().eq(3).remove(); 
    });

    $(document).on('click', '.edit-sholastic-achievement', function(){ 
        var shell =$(this).parents().eq(3);
        shell.after($(".scholastic-achievement-edit").clone().removeClass("hide"));
        shell.addClass("hide"); 
    });

    $(document).on('click', '#save-edit-sholastic-achievement', function(){ 
        var shell =$(this).parents().eq(2);
        shell.prev().removeClass("hide");
        shell.remove();
    });    
    $(document).on('click', '#cancel-edit-sholastic-achievement', function(){ 
        var shell =$(this).parents().eq(2);
        shell.prev().removeClass("hide");
        shell.remove();
    }); 

});



Dropzone.options.demoUpload = {
	init: function() {
    this.on("addedfile", function(file){document.getElementById("demo-upload").submit();});
  }
};




var cityStates = [
    "Atlanta, GA",
    "Phoenix, AZ",
    "Chicago, IL",
    "Houston, TX",
    "Philadelphia, PA",
    "San Antonio, TX",
    "San Diego, CA",
    "Dallas, TX",
    "San Jose, CA",
    "Austin, TX"
];

var desiredTitle = [
    "Customer Service",
    "Sales Excecutive",
    "Sales Associate",
    "Industrial Engineer",
    "Financial Officer",
    "Industrial Designer"
];

var skills = [
    "Sales",
    "Design",
    "Java",
    "HTML",
    "CSS",
    "Oracle"
];


$("#cityStates").autocomplete({
     source: cityStates
});

$("#desiredTitle").autocomplete({
    source: desiredTitle
});

$("#skills").autocomplete({
    source: skills
});

 


$(function(){ $(document).foundation(); });
