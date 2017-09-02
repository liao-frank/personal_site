// Switching slides
function switchSlides(preview, imageUrl) {
	$('.slide-preview').removeClass('active');
	$(preview).addClass('active');
	// switch main slide
	$('project-slides').css('background-image', imageUrl);
}