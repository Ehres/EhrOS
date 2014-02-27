'use strict'

describe 'Service: Window', () ->

  # load the service's module
  beforeEach module 'ehrOsApp'

  # instantiate service
  Window = {}
  beforeEach inject (_Window_) ->
    Window = _Window_

  it 'should do something', () ->
    expect(!!Window).toBe true
