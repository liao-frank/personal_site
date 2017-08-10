// dynamic check
$(window).scroll(
	{
		previousTop: null,
	}, 
	function () {
	var currentTop = $(window).scrollTop();
	// new load
	if ( this.previousTop == null && currentTop > $('#navbar').height() ) {
		$('#navbar').addClass('is-fixed is-visible');
	} else if ( this.previousTop == null && currentTop < $('#navbar').height() ) {
		$('#navbar').removeClass('is-fixed is-visible');
	} else {
		// is-fixed check
		var isFixed = true;
		if (currentTop == 0) {
			$('#navbar').removeClass('is-fixed');	
			isFixed = false;
		} else if ( currentTop > $('#navbar').height() ) {
			$('#navbar').addClass('is-fixed');
			isFixed = true;
		}
		// is-visible check
		if (isFixed && currentTop < this.previousTop) {
			$('#navbar').addClass('is-visible');
		} else {
			$('#navbar').removeClass('is-visible');
		}
	}
	this.previousTop = currentTop;
});