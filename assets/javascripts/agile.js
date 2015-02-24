$(function() {
	$('.agile-link').on('click', function() {
		$('.agile-link').removeClass('selected');
		$(this).addClass('selected');
		if ("replaceState" in window.history) {
			window.history.replaceState(null, document.title, $(this).data('path'));
		}
	});
})