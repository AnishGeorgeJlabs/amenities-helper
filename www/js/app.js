(function() {
  angular.module('manoj', ['ionic', 'ngCordova', 'manoj.constants']).config(function($ionicConfigProvider, $stateProvider, $urlRouterProvider) {
    $ionicConfigProvider.navBar.alignTitle('center');
    $stateProvider.state('main', {
      url: '/main',
      templateUrl: 'templates/views/main.html'
    });
    return $urlRouterProvider.otherwise('/main');
  }).run(function($ionicPlatform) {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      return StatusBar.styleDefault();
    }
  });

}).call(this);
