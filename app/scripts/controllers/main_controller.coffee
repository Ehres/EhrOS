'use strict'

angular.module('ehrOsApp')
  .controller 'main_controller', ($scope, $appWindow) ->
    $scope.windows = $appWindow.getWindows()
