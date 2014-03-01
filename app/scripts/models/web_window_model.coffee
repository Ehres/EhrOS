'use strict'

class window.WebWindow
  constructor: (options)->
    {@id, @title, @content, @templateURL, @hasFooter, @position, @width, @height, @zIndex, @menus} = options
    @width  = if options.width?  then options.width  else 400
    @height = if options.height? then options.height else 300
