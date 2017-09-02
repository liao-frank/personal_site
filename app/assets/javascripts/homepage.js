function resetHelloiaman() {
	$('.home-content .i-am').removeAttr('style');
	$('.home-content .i-am span').removeAttr('style');
	maxFillText('.home-content .i-am');
}
function helloiaman(section) {
	resetHelloiaman();

	let WIDTH = $('.home-content .i-am span').width();
	var section_width;
	var offset;

	if (section == "helloiam") {
		section_width = 203 / 263;
		offset = 0;
	} else if (section == "iama") {
		section_width = 109 / 263;
		offset = 128 / 263;
	} else if (section == "iaman") {
		section_width = 135 / 263;
		offset = 128 / 263;
	}

	offset = offset * 100;
	$('.home-content .i-am').css('width', (section_width * WIDTH).toString() + "px" );
	$('.home-content .i-am span').css({
		'-ms-transform': 'translateX(-' + offset.toString() + '%)',
		'-webkit-transform': 'translateX(-' + offset.toString() + '%)',
		'transform': 'translateX(-' + offset.toString() + '%)'
	});
}
function maxFillText(selector) {
	$(selector).textfill({
		maxFontPixels: 0
	});
}
function randimateTechTitle() {
	let LENGTH = 700;
	let FRAMES = 2;
	randimateText('.tech.title .line.one span', 'Tech', speed=(LENGTH/FRAMES/4), frames=FRAMES);
	randimateText('.tech.title .line.two span', 'Lover', speed=(LENGTH/FRAMES/5), frames=FRAMES);
}
// Switching functionality
function switchToHomeTitle(selector) {
	$('.title').removeClass('visible');
	$(selector + '.title').addClass('visible');
	maxFillText(selector + '.title .text-fill');
}
function switchToHomeDetails(selector) {
	$('.details').removeClass('visible');
	$(selector + '.details').addClass('visible');
}
function switchToHomeSwitch(selector) {
	$('.switch').removeClass('active');
	$(selector + '.switch').addClass('active');
}
function switchToHome(selector) {
	switchToHomeTitle(selector);
	switchToHomeDetails(selector);
	switchToHomeSwitch(selector);
	
	// Case checks
	if (selector == ".name") {
		helloiaman('helloiam');
	} else if ( isVowel(selector.charAt(1)) ) {
		helloiaman('iaman');
	} else {
		helloiaman('iama');
	}
	

	if (selector == ".tech") {
		randimateTechTitle();
	}
}