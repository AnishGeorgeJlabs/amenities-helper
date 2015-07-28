angular.module('aHelper', ['ionic', 'ngCordova'])
.config ($ionicConfigProvider,
      $stateProvider, $urlRouterProvider) ->
  # $ionicConfigProvider.navBar.alignTitle('center')
  $stateProvider
  .state('tab',
    url: '/tab'
    abstract: true
    templateUrl: 'templates/views/tabs.html'
  )

  $urlRouterProvider.otherwise('/tab')

.run ($ionicPlatform) ->
  # Hide accessory bar by default, remove to show bar in form inputs
  if window.cordova and window.cordova.plugins.Keyboard
    cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
  if window.StatusBar
    StatusBar.styleDefault()