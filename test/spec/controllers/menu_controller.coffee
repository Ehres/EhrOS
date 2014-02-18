'use strict'

describe 'Controller: MenuControllerCtrl', () ->

  # load the controller's module
  beforeEach module 'ehrOsApp'

  MenuControllerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MenuControllerCtrl = $controller 'MenuControllerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
