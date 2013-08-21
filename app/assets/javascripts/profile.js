// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {

	$("#news_content").on('blur',function(e) {
		// $("#news_content").css({
		// 	height: "36",
		// 	width: "155"
		// });
		$("#news_content").animate({
			rows: "2",
			cols: "20"
		}, 1);
		return false;
	})

	$("#news_content").on('focus',function() {
		$("#news_content").animate({
			rows: "5",
			cols: "70"
		}, 100);
		return false;
	});

	$(".select").click(function() {
		$(this).addClass('active');
		$(".select").not($(this)).removeClass('active');
		$(".visible")[0].style.visibility = 'hidden';
		$(".visible").removeClass('visible');

		// Hide and Display appropriate comments
		if ($(this).hasClass('select_news')) {
			$("#news").addClass('visible');
			$("#news")[0].style.visibility = 'visible';
			$("#new_btn").html("New gossip...");
		} else if ($(this).hasClass('select_stories')) {
			$("#stories").addClass('visible');
			$("#stories")[0].style.visibility = 'visible';
			$("#new_btn").html("Tell a story...");
		} else if ($(this).hasClass('select_quotes')) {
			$("#quotes").addClass('visible');
			$("#quotes")[0].style.visibility = 'visible';
			$("#new_btn").html("New quote...");
		} else if ($(this).hasClass('select_personality')) {
			$("#personality").addClass('visible');
			$("#personality")[0].style.visibility = 'visible';
			$("#new_btn").html("What are they like?");
		} else if ($(this).hasClass('select_romance')) {
			$("#romance").addClass('visible');
			$("#romance")[0].style.visibility = 'visible';
			$("#new_btn").html("Romantic entanglements...");
		} else if ($(this).hasClass('select_workplace')) {
			$("#workplace").addClass('visible');
			$("#workplace")[0].style.visibility = 'visible';
			$("#new_btn").html("What are their work habits?");
		} else {
			$("#coolnesses").addClass('visible');
			$("#coolnesses")[0].style.visibility = 'visible';
			$("#new_btn").html("Post something cool...");
		}
		return false
	});
});