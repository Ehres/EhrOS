'use strict'

angular.module('ehrOsApp')
  .directive('ngDraggable', ($document) ->

    restrict: 'A'
    scope   :
      ngModel : "="

    link    : (scope, element, attrs) ->
      startX = 0
      startY = 0
      x = 0
      y = 0

      element.on 'mousedown', (event) ->
        # Prevent default dragging of sele  cted content
        event.preventDefault()

        x = element[0].offsetLeft
        y = element[0].offsetTop

        startX = event.pageX - x
        startY = event.pageY - y
        $document.on 'mousemove', mousemove
        $document.on 'mouseup', mouseup

      mousemove = (event)->
        y = event.pageY - startY
        x = event.pageX - startX

        element.css
          top : y + 'px',
          left: x + 'px'

        scope.ngModel?.position?.x = x
        scope.ngModel?.position?.y = y

      mouseup = ->
        $document.unbind 'mousemove', mousemove
        $document.unbind 'mouseup', mouseup
)
