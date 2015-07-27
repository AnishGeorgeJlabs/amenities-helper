(function() {
  angular.module('aHelper', ['ionic']).run(function($ionicPlatform) {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      return StatusBar.styleDefault();
    }
  });

}).call(this);
