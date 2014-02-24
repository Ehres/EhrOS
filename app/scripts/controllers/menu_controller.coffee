'use strict'

angular.module('ehrOsApp')
  .controller 'menu_controller', ($scope, $appWindow) ->

    $scope.newWindow = ->
      $appWindow.newWindow
        title : "mon titre"
        content : "mon contenu test"