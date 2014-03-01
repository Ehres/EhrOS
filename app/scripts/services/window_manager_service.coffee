'use strict'

angular.module('ehrOsApp')
  .service '$windowManager', () ->
    @windows = []
    @activeWindow = 0

    @getWindows = =>
      @windows

    @create = (options)=>
      newWindow = new WebWindow options
      body = $ "body"
      newWindow.position =
        x : body.width() / 2 - newWindow.width / 2 + "px"
        y : body.height() / 2 - newWindow.height / 2 + "px"

      @windows.push newWindow

    @close = (window)=>
      @windows.splice @windows.indexOf(window), 1

    @getMenuActiveWindow = =>
      @windows[@activeWindow]?.menus

    @getNameActiveWindow = =>
      @windows[@activeWindow]?.title

    @
