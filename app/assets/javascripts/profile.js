// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
	$(".select").click(function(e) {
		$(this).addClass('active');
		$(".select").not($(this)).removeClass('active');
		return false
	});
});