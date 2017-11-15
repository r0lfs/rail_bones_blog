# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load',->
	$('.destroy_comment').on 'ajax:success', ->
		$(this).closest('.comment').remove()
		
	$('.reply-click').on 'click',-> #toggles the text of the reply link on click
		if $(this).text() == 'Reply'
			$(this).text('Cancel')
		else
			$(this).text('Reply')

	$('.show-click').on 'click',->
		if $(this).text() == 'Show Comments'
			$(this).text('Hide Comments')
		else
			$(this).text('Show Comments')

