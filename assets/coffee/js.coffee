$ ->
	$( '.cycle-slideshow' ).hide()
	setTimeout (->
		$('.cycle-slideshow.right').cycle('goto', 3)
		setPagers()
		setTimeout (-> $( '.cycle-slideshow' ).fadeIn() ), 500
		), 500

	setPagers = () ->
		$('.pager a').each (index, element) =>
			if (index < 9)
				$(element).text( "0" + (index + 1) )
			else
				$(element).text(index + 1)

	$( '.cycle-slideshow' ).on 'cycle-before', (event, optionHash, outgoingSlideEl, incomingSlideEl, forwardFlag) ->
		speed = [200,300,400,500,600,700,800,900,1000,1100]
		i = Math.floor(Math.random() * 10) - 1
		$(this).data('speed', speed[i])

		if $(incomingSlideEl).children().hasClass('video')
			$('video', incomingSlideEl)[0].play()

		$('.pager h1').mouseenter (event) ->
			activeSlide = parseInt($(event.target.children).text())
			if $(event.target).closest('.cycle-slideshow').hasClass('left')
				$(event.target).closest('.cycle-slideshow').cycle('goto', activeSlide - 1);
			else
				$(event.target).closest('.cycle-slideshow').cycle('goto', activeSlide - 6);
			$(event.target).closest('.cycle-slideshow').cycle('pause')

		$('.pager h1').mouseleave (event) ->
			$(event.target).closest('.cycle-slideshow').cycle('resume')