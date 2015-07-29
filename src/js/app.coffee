angular.module('manoj', ['ionic', 'ngCordova'
  'manoj.constants'
])

.config ($ionicConfigProvider,
      $stateProvider, $urlRouterProvider) ->
  $ionicConfigProvider.navBar.alignTitle('center')
  $stateProvider
  .state('main',
    url: '/main'
    templateUrl: 'templates/views/main.html'
  )

  $urlRouterProvider.otherwise('/main')

.run ($ionicPlatform) ->
  # Hide accessory bar by default, remove to show bar in form inputs
  if window.cordova and window.cordova.plugins.Keyboard
    cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
  if window.StatusBar
    StatusBar.styleDefault()