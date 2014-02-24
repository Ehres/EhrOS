'use strict'

angular.module('ehrOsApp')
  .service '$windowManager', () ->
    @windows = []

    newWindow : (options)=>
      newWindow = new AppWindow options
      body = $("body")
      newWindow.position =
        x : body.width() / 2 - newWindow.width / 2 + "px"
        y : body.height() / 2 - newWindow.height / 2 + "px"

      @windows.push newWindow

    getWindows : =>
      @windows

    close : (window)=>
      @windows.splice @windows.indexOf(window), 1