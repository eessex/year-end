$ ->
	setTimeout (->
		setPagers()
		), 1000

	setPagers = () ->
		$('.pager a').each (index, element) =>
			if (index < 9)
				$(element).text( "0" + (index + 1) )
			else
				$(element).text(index + 1)

	$( '.cycle-slideshow' ).on 'cycle-before', (event, optionHash, outgoingSlideEl, incomingSlideEl, forwardFlag) ->
		if $(incomingSlideEl).children().hasClass('video')
			$('video', incomingSlideEl)[0].play()

		$('.pager h1').mouseenter (event) ->
			activeSlide = parseInt($(event.target.children).text())
			$(event.target).closest('.cycle-slideshow').cycle('goto', activeSlide - 1);
			$(event.target).closest('.cycle-slideshow').cycle('pause')

		$('.pager h1').mouseleave (event) ->
			$(event.target).closest('.cycle-slideshow').cycle('resume')