'use strict'

angular.module('ehrOsApp')
  .controller 'web_window_controller', ($scope, $windowManager) ->
    $scope.close = ->
      $windowManager.close $scope.webWindow

    $scope.setFocus = ->
        $windowManager.setActiveWebWindow $scope.webWindow.id
    @
