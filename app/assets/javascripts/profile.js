// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
	$(".select").click(function() {
		$(this).addClass('active');
		$(".select").not($(this)).removeClass('active');

		// Hide and Display appropriate comments
		if ($(this).hasClass('select_news')) {
			$(".visible")[0].style.visibility = 'hidden';
			$(".visible").removeClass('visible');
			$("#news").addClass('visible');
			$("#news")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_stories')) {
			console.log($(".visible")[0]);
			$(".visible")[0].style.visibility = 'hidden';
			$(".visible").removeClass('visible');
			$("#stories").addClass('visible');
			$("#stories")[0].style.visibility = 'visible';
		}
		return false
	});
});