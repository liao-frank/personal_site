// Switching slides
function switchSlides(block, url) {
	// console.log(preview, imageUrl, `url(${imageUrl})`);
	$('.slide-block').removeClass('active');
	$(block).addClass('active');

	let youtubeRe = /img\.youtube\.com/;

	// detect youtube video
	if (url.match(youtubeRe)) {
		youtube_id = url.replace('http://img.youtube.com/vi/', '').replace('/maxresdefault.jpg', '');
		youtube_src = `https://www.youtube.com/embed/${youtube_id}?rel=0&amp;showinfo=0`;
		$('.project-slides iframe').addClass('active');
		$('.project-slides iframe').attr('src', `${youtube_src}?rel=0&amp;showinfo=0`);
	} else {
		// deactivate iframe
		$('.project-slides iframe').removeClass('active');
		$('.project-slides iframe').attr('src', ``);
		// set slide
		$('.project-slides').css({
			'background-image': `url(${url})`
		});
	}
}