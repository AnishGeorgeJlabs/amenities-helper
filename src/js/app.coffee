angular.module('aHelper', ['ionic'])
.run ($ionicPlatform) ->
  # Hide accessory bar by default, remove to show bar in form inputs
  if window.cordova and window.cordova.plugins.Keyboard
    cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
  if window.StatusBar
    StatusBar.styleDefault()