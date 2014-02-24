'use strict'

angular.module('ehrOsApp')
  .controller 'menu_controller', ($scope, $windowManager) ->

    $scope.newWindow = ->
      $windowManager.newWindow
        title : "mon titre"
        content : "mon contenu test"