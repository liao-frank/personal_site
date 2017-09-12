var page_loaded = false;
var preloader_show = true;
var preloader_removed = false;



$(document).ready(function() {
	$('#preloader').addClass('start');
	// $('#content-wrapper').css('display', 'none');
	
	setTimeout(function() {
		preloader_show = false;
		if (page_loaded) {
			removePreloader();
		}
	}, 200);
});

$(window).on('load', function() {
	page_loaded = true;
	if (!preloader_show) {
		removePreloader();
	}
});

function removePreloader() {
	preloader_removed = true;
	$('#content-wrapper').css('display', '');
	$('#preloader').removeClass('start');
	// daWidth('wrapper show');
	try {
		maxFillText('.text-fill', completion=function() {
			switchToHome('.name');
		});
		setTimeout(function() {
			switchToHome(current);
		}, 150);
	} catch(err) {
		// console.log("Not on home page...");
	}
}