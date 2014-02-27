'use strict'

describe 'Directive: resizableDirective', () ->

  # load the directive's module
  beforeEach module 'ehrOsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<resizable-directive></resizable-directive>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the resizableDirective directive'
