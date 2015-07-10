
 angular.module('cisco_capital', ['ngRoute','ngMaterial','ng-mfb','duScroll','fsm']);
 
 angular.module('cisco_capital').controller('AppCtrl', AppCtrl);
 angular.module('cisco_capital').controller('LeftCtrl', LeftCtrl);
 angular.module('cisco_capital').controller('RightCtrl', RightCtrl);
 angular.module('cisco_capital').controller('TabCtrl', TabCtrl);
 angular.module('cisco_capital').controller('loginCtrl' , loginCtrl);
 angular.module('cisco_capital').controller('regCtrl' , regCtrl);
 angular.module('cisco_capital').controller('profileCtrl' , profileCtrl);
 angular.module('cisco_capital').controller('saveEditedDetailsCtrl' , saveEditedDetailsCtrl);
 angular.module('cisco_capital').controller('resultController' , resultController);
 angular.module('cisco_capital').controller('listController' , listController);
 angular.module('cisco_capital').controller('selectCtrl' , selectCtrl);
 angular.module('cisco_capital').controller('DemoCtrl' , DemoCtrl);
 angular.module('cisco_capital') .controller('BasicDemoCtrl', DemoCtrl);

 
 
 //services
 angular.module('cisco_capital').service('sharedService',sharedService);
 
 //directives
 angular.module('cisco_capital').directive('headerDirective',headerDirective);
 angular.module('cisco_capital').directive('helloWorld',helloWorld);
 angular.module('cisco_capital').directive('gotoTop',gotoTop);
 
 /*angular.module('cisco_capital').factory('basket',basket);*/
 /*angular.module('cisco_capital').controller('parentCtrl',parentCtrl);
 angular.module('cisco_capital').factory('notify',notify);*/
 angular.module('cisco_capital').config(function($routeProvider) {
		$routeProvider
		.when("/login", {templateUrl : "login" })
		.when("/profile", {templateUrl : "userProfile"})
		.when("/registration", {templateUrl : "userRegistration"})
		.when("/signin",{templateUrl:"login"})
		.when("/userDetails",{templateUrl:"UserDetails",controller:"listController"})
		.when("/list", {templateUrl : "result",controller:"resultController"})
		.when("/formData/:userId?", {templateUrl : "formData",controller:"editController"})
		.when("/home", {templateUrl : "home"})
		.otherwise({redirectTo : '/login'});
	});

angular.module('cisco_capital').config(function($mdThemingProvider){
	/*$mdThemingProvider.theme('default')
	.primaryPalette("indigo")
	.accentPalette("pink")
	.warnPalette("red")
	*/

  //  var inboxBlue = $mdThemingProvider.extendPalette('blue', {'500': '3c80f6'});
    var materialGreen = $mdThemingProvider.extendPalette('teal', {'200': 'B2DFDB'});
  // Register the new color palette
  /*$mdThemingProvider.definePalette('inboxBlue', inboxBlue);*/
    $mdThemingProvider.definePalette('materialGreen', materialGreen);
  // Use that theme for the primary intentions
  $mdThemingProvider.theme('default')
    .primaryPalette('materialGreen')
    .accentPalette("pink")
	.warnPalette("red")
});
 


angular.module('cisco_capital').config(function($mdIconProvider) {
	  $mdIconProvider
	    .iconSet('social', 'img/icons/sets/social-icons.svg', 24)
	    .iconSet('device', 'img/icons/sets/device-icons.svg', 24)
	    .iconSet('communication', 'img/icons/sets/communication-icons.svg', 24)
	    .defaultIconSet('img/icons/sets/core-icons.svg', 24);
	});

/*angular.module('cisco_capital').config([ 'cfpLoadingBarProvider', function(cfpLoadingBarProvider) {
	cfpLoadingBarProvider.includeSpinner = true;
}]);*/