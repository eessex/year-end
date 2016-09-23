backgroundsLeft = ['url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2Ffu2NrvxW_F3JK3rCE-50dw%252F1405_A-Levy_FelixKiessling_Ausdehnung_35B9884.jpg&width=1100&quality=95)',
									 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2F9c8Gt0OxTiCWiOszM76LIw%252FMCH_Artsy5.jpg&width=1100&quality=95)',
									 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2FD0QaqRzjY2PoCuSp2HvhSA%252F1-AnnaHulau%25CC%2588ov%25E2%2580%25A0-Brothers-2015-photoby%2BMicha%2BlCzanderle-courtesy%2Bhuntkastner%25282%2529.jpg&width=1100&quality=95)',
							 		 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2FKyfI_f_djZ3OEWkhE-tiPw%252FOther%2BPeople%2B3.jpg&width=1100&quality=95)',
							 		 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2Fe6BWBwt9UQ-i_tRqUsKuJA%252FDH-PERFORMANCE%2BVIEW-2016-30-HIRES.jpg&width=1100&quality=95)'
							 		 ];
i = 0

rotateBackgroundLeft = =>
	if i < 5
		$('.article-fullscreen__col-1').css('background-image', backgroundsLeft[i])
		++ i
		i = 0 if i == 5

	setTimeout(rotateBackgroundLeft, 3000)

rotateBackgroundRight = =>
	if i < 5
		$('.article-fullscreen__col-2').css('background-image', backgroundsLeft[i])
		++ i
		i = 0 if i == 5

	setTimeout(rotateBackgroundRight, 4000)

randomTimeout = ->
	stuff = Math.random() * (5000 - 1000) + 1000
	console.log stuff

$('.item').mouseenter (event) ->
	$('.item').removeClass('active')
	item = $(this).toggleClass('active')

rotateBackgroundLeft()
rotateBackgroundRight()
