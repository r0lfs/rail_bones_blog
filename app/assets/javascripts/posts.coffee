# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# require best_in_place
# require jquery

$('.best_in_place').best_in_place()

$(document).on 'turbolinks:load',->
	$('.destroy_post').on 'ajax:success', ->
		$(this).closest('.post').remove()

