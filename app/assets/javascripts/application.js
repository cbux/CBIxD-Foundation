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
			// cbpassword: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{8,15}$/
			// }
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
    $("#job_alert_btn").replaceWith( '<p class="job_alert_active">Job Alert Active</p>');
    });
    $("#job_save_btn").click(function(){
    $("#job_save_btn").replaceWith( '<p class="job_alert_active">Job Saved</p>');
    });
    // $("#emailopen").click(function(){
    // $("#emailopened").toggle('fast');
});
  jQuery(function($) {
    $("select[multiple]").bsmSelect({
    });
});

Dropzone.options.demoUpload = {
	init: function() {
    this.on("addedfile", function(file){document.getElementById("demo-upload").submit();});
  }
};


