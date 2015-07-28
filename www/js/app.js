(function() {
  angular.module('manoj', ['ionic', 'ngCordova', 'manoj.constants']).config(function($ionicConfigProvider, $stateProvider, $urlRouterProvider) {
    $stateProvider.state('tab', {
      url: '/tab',
      abstract: true,
      templateUrl: 'templates/views/tabs.html'
    }).state('tab.dustbin', {
      url: '/dustbin',
      views: {
        'tab-dustbin': {
          templateUrl: 'templates/views/tab-dustbin.html'
        }
      }
    }).state('tab.toilet', {
      url: '/toilet',
      views: {
        'tab-toilet': {
          templateUrl: 'templates/views/tab-toilet.html'
        }
      }
    });
    return $urlRouterProvider.otherwise('/tab/dustbin');
  }).run(function($ionicPlatform) {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      return StatusBar.styleDefault();
    }
  });

}).call(this);
