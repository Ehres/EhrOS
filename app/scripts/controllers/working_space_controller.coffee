'use strict'

angular.module('ehrOsApp')
  .controller 'working_space_controller', ($scope, $windowManager) ->
    $scope.webWindows = $windowManager.getWebWindows()
