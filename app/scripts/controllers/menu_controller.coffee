'use strict'

angular.module('ehrOsApp')
  .controller 'menu_controller', ($scope, $windowManager) ->

    $scope.menuItems  = $windowManager.getMenuActiveWindow()
    $scope.name       = $windowManager.getNameActiveWindow()

    $scope.newWindow = ->
      $windowManager.create
        title : "mon titre"
        content : "mon contenu test"
        menus : [
          title: "file"
          menuItems:[
            title:"open"
            isSubTitle : false
            action : "coucou"
          ,
            title:"open2"
            isSubTitle : false
            action : "coucou2"
          ]
        ,
          title: "edit"
          menuItems:[
            title:"open3"
            isSubTitle : false
            action : "coucou3"
          ,
            title:"open3"
            isSubTitle : false
            action : "coucou3"
          ]
        ]

    $scope.$watch 'menuItems', ->
      console.log $scope.menuItems
