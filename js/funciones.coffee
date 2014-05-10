$ ->

	

	$('#menu_gen li a').click (event) ->
		event.preventDefault()
		$('#menu_gen li a').removeClass 'active'
		$(this).addClass 'active'
		$('#header').animate
			top: 0
			marginTop: 0
			,400
		soursa = $(this).attr 'href'
		mothra = $(window).height()
		turno = $(this).attr 'rel'
		$('.upao').css 'display','none'
		$('#container').animate
			marginTop: '-'+mothra*turno+'px'
			,400, ->
				$('#header').addClass 'nona'
				$('.lista_hi li img').each ->
					altos_2 = $(this).height()
					$(this).css 'margin-top','-'+altos_2*0.5+'px'

	anchuras_ = $(window).width()
	anchura2_ = anchuras_ - 400
	if anchuras_ >= 1000
		$('.activao').css 'width',anchura2_
	else
		$('.activao').css 'width','600px'

	$(window).resize ->
		anchuras = $(window).width()
		anchura2 = anchuras - 400
		if anchuras >= 1000
			$('.activao').css 'width',anchura2
		else
			$('.activao').css 'width','600px'

	$('a.upa').qtip
		 style:
		 	name: 'dark'
		 	tip: true
		 position:
	        corner:
	        	target: 'topMiddle'
	        	tooltip: 'bottomMiddle'

	$('a.upao').qtip
		 style:
		 	name: 'dark'
		 	tip: true
		 position:
	        corner:
	        	target: 'bottomMiddle'
	        	tooltip: 'topMiddle'

	$('#launch').click (e) ->
		iteration = $(this).data('iteration') or 1
		e.preventDefault()
		switch iteration
			when 1
				$(this).children().attr 'src','images/cerrar.png'
				ancho = $(window).width() - 400
				$(this).children('span').text 'Menú'
				$(this).attr 'title','Cerrar el Menú'
				$('#changes').animate
					marginRight: '-250px'
					,400
				$('#cont_in').addClass 'activao'
				$('#cont_in').delay(410).animate
					width: ancho
					,1000
				break
				
				
			when 2
				$(this).children().attr 'src','images/menu.png'
				$(this).children('span').text 'Menú'
				$(this).attr 'title','Abrir el Menú'
				$('#changes').delay(1010).animate
					marginRight: '0px'
					,400
				$('#cont_in').removeClass 'activao'
				$('#cont_in').animate
					width: 0
					,1000
				break
		iteration++
		if iteration>2
			iteration=1
		$(this).data 'iteration',iteration
				
			
			
		
