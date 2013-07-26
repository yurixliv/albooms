
var albooms = angular.module('albooms', ['ngResource']);

albooms.config(['$httpProvider', function($httpProvider) {
	$httpProvider.defaults.headers.common['X-CSRF-TOKEN'] = $('meta[name="csrf-token"]').attr('content');
	$httpProvider.defaults.headers.common['Accept'] = 'application/json'
}]);