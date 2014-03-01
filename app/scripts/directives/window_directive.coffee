'use strict'

angular.module('ehrOsApp')
  .directive('webWindow', () ->
    templateUrl : 'views/webWindow.html'
    replace     : true
    restrict    : 'E'
    controller  : "web_window_controller"
    link        : (scope, element, attrs) ->
      $(element).css
        left    : scope.webWindow.position.x
        top     : scope.webWindow.position.y
        width   : scope.webWindow.width
        height  : scope.webWindow.height
  )
