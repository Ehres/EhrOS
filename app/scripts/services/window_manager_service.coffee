'use strict'

angular.module('ehrOsApp')
  .service '$windowManager', ($util) ->
    @windows          = []
    @activeWebWindow  = 0

    @getWebWindows = =>
      @windows

    @create = (options)=>
      newWindow = new WebWindow options
      newWindow.id = $util.uniqueId
      body = $ "body"
      newWindow.position =
        x : body.width() / 2 - newWindow.width / 2 + "px"
        y : body.height() / 2 - newWindow.height / 2 + "px"

      @windows.push newWindow

    @close = (window)=>
      @windows.splice @windows.indexOf(window), 1

    @getMenuActiveWindow = =>
      @windows[@activeWebWindow]?.menus

    @getNameActiveWindow = =>
      @windows[@activeWebWindow]?.title

    @setActiveWebWindow = (idWebWindow)=>
      @activeWebWindow = idWebWindow

    @
