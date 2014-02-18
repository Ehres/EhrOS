'use strict'

describe 'Controller: WorkingSpaceControllerCtrl', () ->

  # load the controller's module
  beforeEach module 'ehrOsApp'

  WorkingSpaceControllerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WorkingSpaceControllerCtrl = $controller 'WorkingSpaceControllerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
