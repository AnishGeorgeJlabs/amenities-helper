(function() {
  angular.module('aHelper', ['ionic', 'ngCordova']).config(function($ionicConfigProvider, $stateProvider, $urlRouterProvider) {
    $stateProvider.state('tab', {
      url: '/tab',
      abstract: true,
      templateUrl: 'templates/views/tabs.html'
    });
    return $urlRouterProvider.otherwise('/tab');
  }).run(function($ionicPlatform) {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      return StatusBar.styleDefault();
    }
  });

}).call(this);
