'use strict'

class window.AppWindow
  constructor: (options)->
    {@title, @content, @templateURL, @hasFooter, @position, @width, @height, @index} = options
    @width  = if options.width?  then options.width  else 400
    @height = if options.height? then options.height else 300