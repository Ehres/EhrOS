'use strict'

angular.module('ehrOsApp')
	.controller 'main_controller', ($scope, $windowManager) ->
		$scope.windows = $windowManager.getWindows()
