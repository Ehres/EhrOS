'use strict'

angular.module('ehrOsApp')
  .controller 'window_controller', ($scope, $windowManager) ->
    $scope.close = ->
      $windowManager.close $scope.window