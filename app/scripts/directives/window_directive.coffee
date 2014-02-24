'use strict'

angular.module('ehrOsApp')
  .directive('window', () ->
    templateUrl : 'views/window.html'
    replace     : true
    restrict    : 'E'
    controller  : "window_controller"
    link        : (scope, element, attrs) ->
      $(element).css
        left    : scope.window.position.x
        top     : scope.window.position.y
        width   : scope.window.width
        height  : scope.window.height
  )
