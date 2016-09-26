

backgroundsLeft = ['url(./assets/images/one.jpeg)',
				   				 'url(./assets/images/two.jpeg)',
					 				 '/Users/eve/development/year-end/assets/images/three.mp4',
							 		 'url(./assets/images/four.jpeg)',
							 		 '/Users/eve/development/year-end/assets/images/five.mp4',
							 		 'url(./assets/images/one.jpeg)',
				   				 'url(./assets/images/two.jpeg)',
					 				 '/Users/eve/development/year-end/assets/images/three.mp4',
							 		 'url(./assets/images/four.jpeg)',
							 		 '/Users/eve/development/year-end/assets/images/five.mp4'
							 		 ];
i = 0

rotateBackgroundLeft = =>
	active = i + 1
	if i < 5
		if backgroundsLeft[i].includes('.mp4')
			console.log i + " vid " + backgroundsLeft[i]
			$('.item').removeClass('active')
			$('*[data-id="' + active + '"]').toggleClass('active')
			$('.article-fullscreen__col-1 .media video').attr('src', backgroundsLeft[i])
			$('.article-fullscreen__col-1 .media video').css('opacity', 1)
			$('.article-fullscreen__col-1 .media').css('background', 'rgba(255,255,255,0)')
		else
			console.log i + " img " + backgroundsLeft[i]
			$('.item').removeClass('active')
			$('*[data-id="' + active + '"]').toggleClass('active')
			$('.article-fullscreen__col-1 .media').css('background', backgroundsLeft[i])
			$('.article-fullscreen__col-1 .media video').css('opacity', 0)
		++ i
		i = 0 if i == 5

rotateBackgroundRight = =>
	if i < 5
		if backgroundsLeft[i].includes('.mp4')
			console.log i + " vid " + backgroundsLeft[i]
			$('.article-fullscreen__col-2 .media video').attr('src', backgroundsLeft[i])
			$('.article-fullscreen__col-2 .media video').css('opacity', 1)
			$('.article-fullscreen__col-2 .media').css('background', 'rgba(255,255,255,0)')
		else
			console.log i + " img " + backgroundsLeft[i]
			$('.article-fullscreen__col-2 .media').css('background', backgroundsLeft[i])
			$('.article-fullscreen__col-2 .media video').css('opacity', 0)
		++ i
		i = 0 if i == 5

# randomTimeout = ->
# 	stuff = Math.random() * (5000 - 1000) + 1000
# 	console.log stuff

timerLeft = setInterval(rotateBackgroundLeft, 3000)
timerRight = setInterval(rotateBackgroundRight, 3000)

$('.item').mouseenter (event) ->
	if i < 5
		clearInterval(timerLeft)
	else
		clearInterval(timerRight)
	$('.item').removeClass('active')
	i = $(this).data('id') - 1
	if backgroundsLeft[i].includes('.jpeg')
		$(this).parent().siblings('.media').find('video').css('opacity', 0)
		$(this).parent().siblings().css( 'background', backgroundsLeft[i] )
	else if backgroundsLeft[i].includes('.mp4')
		$(this).parent().siblings('.media').find('video').attr('src', backgroundsLeft[i]).css('opacity', 1)
	$(this).toggleClass('active')

$('.item').mouseleave (event) ->
	if i < 5
		setInterval(rotateBackgroundLeft, 3000)
	else
		setInterval(rotateBackgroundRight, 3000)
	$(this).toggleClass('active')

rotateBackgroundLeft()
rotateBackgroundRight()