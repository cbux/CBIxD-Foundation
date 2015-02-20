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
		}
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
    $("#jobsnapshot").show();
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
    $(".save-location").click(function(){
    $(".add-location-view").hide();
    $(".add-location").show();
    $(".new-location-row").show();
    });
    //rec prefs add title desktop
    $(".add-title").click(function(){
    $(".add-title-view").show();
    });
    $(".add-title").click(function(){
    $(".add-title").toggle();
    });
    $(".save-title").click(function(){
    $(".add-title-view").hide();
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
    $(".add-skill-view").hide();
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
});

Dropzone.options.demoUpload = {
	init: function() {
    this.on("addedfile", function(file){document.getElementById("demo-upload").submit();});
  }
};



$(function(){ $(document).foundation(); });
