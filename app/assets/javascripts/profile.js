// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
	$(".select").click(function() {
		$(this).addClass('active');
		$(".select").not($(this)).removeClass('active');
		$(".visible")[0].style.visibility = 'hidden';
		$(".visible").removeClass('visible');

		// Hide and Display appropriate comments
		if ($(this).hasClass('select_news')) {
			$("#news").addClass('visible');
			$("#news")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_stories')) {
			$("#stories").addClass('visible');
			$("#stories")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_quotes')) {
			$("#quotes").addClass('visible');
			$("#quotes")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_personality')) {
			$("#personality").addClass('visible');
			$("#personality")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_romance')) {
			$("#romance").addClass('visible');
			$("#romance")[0].style.visibility = 'visible';
		} else if ($(this).hasClass('select_workplace')) {
			$("#workplace").addClass('visible');
			$("#workplace")[0].style.visibility = 'visible';
		} else {
			$("#coolnesses").addClass('visible');
			$("#coolnesses")[0].style.visibility = 'visible';
		}
		return false
	});
});