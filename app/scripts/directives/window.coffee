'use strict'

angular.module('ehrOsApp')
  .directive('window', () ->
    templateUrl: 'views/window.html'
    restrict: 'E'
    link: (scope, element, attrs) ->

  )
