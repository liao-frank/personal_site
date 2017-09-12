var page_loaded = false;
var preloader_show = true;
var preloader_removed = false;

$(document).ready(function() {
	$('#wrapper').css('display', 'none');
	$('#preloader').addClass('start');

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
	$('#wrapper').css('display', '');
	$('#preloader').removeClass('start');
	daWidth('wrapper show');
	try {
		maxFillText('.text-fill', completion=function() {
			switchToHome('.name');
		});
		daWidth('wrapper show -> max fill');
	} catch(err) {
		console.log("Not on home page...");
	}
	setTimeout(function() {
		daWidth('after 150 pl');
	}, 150);
	setTimeout(function() {
		daWidth('after 200 pl');
	}, 200);
	setTimeout(function() {
		daWidth('after 500 pl');
	}, 500);

}