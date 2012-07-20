# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
jQuery ->
  $('body')
    .delegate '#initial_initials', 'keyup', ->
      $('#new_initial').submit()

    .delegate '#new_initial', 'ajax:complete', (event, data) ->
      $('#result').html(data.responseText)
