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

$(function(){ $(document).foundation(); });

function toggle_visibility(button, id) {
  var e = document.getElementById(id);
  var f = document.getElementById(button);
  if(e.className == 'global-search global-search-toggle') {
    // e.style.display = 'none';
    e.className = "global-search";
    f.style.color = '#FFFFFF';
  }
  else {
    e.className += " global-search-toggle";
    // e.style.display = 'block';
    f.style.color = '#888888';
  }
}

function toggle_password_text(id) {
	var p = document.getElementById(id);
	if(p.innerHTML == "Show") {
		p.innerHTML = "Hide";
	}
	else {
		p.innerHTML = "Show";
	}
}