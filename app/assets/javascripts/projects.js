// Switching slides
function switchSlides(block, imageUrl) {
	// console.log(preview, imageUrl, `url(${imageUrl})`);
	$('.slide-block').removeClass('active');
	$(block).addClass('active');
	// switch main slide
	$('.project-slides').css({
		'background-image': `url(${imageUrl})`
	});
}