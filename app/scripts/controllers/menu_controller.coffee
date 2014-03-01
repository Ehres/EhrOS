'use strict'

angular.module('ehrOsApp')
  .controller 'menu_controller', ($scope, $windowManager) ->

    $scope.menuItems      = $windowManager.getMenuActiveWindow()
    $scope.webWindowName  = $windowManager.getNameActiveWindow()

    $scope.newWindow = ->
      $windowManager.create
        title   : "Window"
        content : "mon contenu test"
        menus : [
          title     : "File"
          menuItems :[
            index   : 0
            title   : "open"
            action  : "coucou"
          ,
            index   : 1
            title   : "save"
            action  : "coucou2"
          ]
          subMenu   :[
            index     : 0
            title     : "test"
            menuItems : [
              index  : 0
              title  : "subTest"
              action : "subTestaction"
            ]
          ]
        ,
          title     : "Edit"
          menuItems :[
            index   : 0
            title   : "copy"
            action  : "coucou3"
          ,
            index   : 1
            title   : "cut"
            action  : "coucou3"
          ]
        ]

    $scope.$watch 'menuItems', ->
      console.log $scope.menuItems
