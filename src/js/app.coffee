angular.module('manoj', ['ionic', 'ngCordova'
  'manoj.constants'
])

.config ($ionicConfigProvider,
      $stateProvider, $urlRouterProvider) ->
  # $ionicConfigProvider.navBar.alignTitle('center')
  $stateProvider
  .state('tab',
    url: '/tab'
    abstract: true
    templateUrl: 'templates/views/tabs.html'
  )
  .state('tab.dustbin',
    url: '/dustbin'
    views:
      'tab-dustbin':
        templateUrl: 'templates/views/tab-dustbin.html'
  )
  .state('tab.toilet',
    url: '/toilet'
    views:
      'tab-toilet':
        templateUrl: 'templates/views/tab-toilet.html'
  )

  $urlRouterProvider.otherwise('/tab/dustbin')

.run ($ionicPlatform) ->
  # Hide accessory bar by default, remove to show bar in form inputs
  if window.cordova and window.cordova.plugins.Keyboard
    cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
  if window.StatusBar
    StatusBar.styleDefault()