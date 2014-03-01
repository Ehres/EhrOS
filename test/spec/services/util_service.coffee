'use strict'

describe 'Service: UtilService', () ->

  # load the service's module
  beforeEach module 'ehrOsApp'

  # instantiate service
  UtilService = {}
  beforeEach inject (_UtilService_) ->
    UtilService = _UtilService_

  it 'should do something', () ->
    expect(!!UtilService).toBe true
