$(document).ready(function() {
	$.get('http://freegeoip.net/csv/', function( data ) {
    var geoip = data.split(',');
    var iploc = geoip[5] + ", " + geoip[4];
    $('#ipfill').val(iploc);
  });
});