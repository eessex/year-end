backgrounds = ['url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2Ffu2NrvxW_F3JK3rCE-50dw%252F1405_A-Levy_FelixKiessling_Ausdehnung_35B9884.jpg&width=1100&quality=95)', 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2F9c8Gt0OxTiCWiOszM76LIw%252FMCH_Artsy5.jpg&width=1100&quality=95)', 'url(https://d7hftxdivxxvm.cloudfront.net/?resize_to=width&src=https%3A%2F%2Fartsy-media-uploads.s3.amazonaws.com%2FD0QaqRzjY2PoCuSp2HvhSA%252F1-AnnaHulau%25CC%2588ov%25E2%2580%25A0-Brothers-2015-photoby%2BMicha%2BlCzanderle-courtesy%2Bhuntkastner%25282%2529.jpg&width=1100&quality=95)'];
current = 0

rotateBackground = =>
	$('.article-fullscreen__col-1').css('background-image', backgrounds[current = ++current % backgrounds.length])
	setTimeout(rotateBackground, 5000)

rotateBackground()