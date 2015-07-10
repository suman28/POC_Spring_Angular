/*Controller for sidenavs*/

function AppCtrl($scope, $timeout, $mdSidenav, $mdUtil, $log) {
	$scope.toggleLeft = buildToggler('left');
	$scope.toggleRight = buildToggler('right');
	/**
	 * Build handler to open/close a SideNav; when animation finishes
	 * report completion in console
	 */
	function buildToggler(navID) {
		var debounceFn = $mdUtil.debounce(function() {
			$mdSidenav(navID).toggle().then(function() {
				$log.debug("toggle " + navID + " is done");
			});
		}, 300);
		return debounceFn;
	}
};

/*controller for left sidenav*/
function LeftCtrl($scope, $timeout, $mdSidenav, $log) {
	$scope.close = function() {
		$mdSidenav('left').close().then(function() {
			$log.debug("close LEFT is done");
		});
	};
};

/*controller for right sidenav*/
function RightCtrl($scope, $timeout, $mdSidenav, $log) {
	$scope.close = function() {
		$mdSidenav('right').close().then(function() {
			$log.debug("close RIGHT is done");
		});
	};
};

/*==============================End of controllers for sidenav==========================*/

function loginController($scope,$location){
	$scope.submitUser = function(){
		$location.path("/profile");
	}
	
}

/*===============================controller for tab switching=============================================*/

function TabCtrl($scope, $location, $log) {
	//$scope.selectedIndex = 0;
	
	$scope.$watch('selectedIndex', function(current, old) {
		switch (current) {
		case 0:
			$location.url("/login");
			break;
		case 1:
			$location.url("/profile");
			break;
		case 2:
			$location.url("/registration");
			break;
		case 3:
			$location.url("/list");
			break;
		case 4:
			$location.url("/details");
			break;

		}
	});
	$scope.isActive = function(viewLocation) {
		return viewLocation === $location.path();
	};
};
/*function TabCtrl($scope,$location){
 //Define the titles of your tabs
 $scope.tabs = ["login", "Profile","Registration"];

 // Change the tab
 $scope.switchTab = function(index) {
 switch(index) {
 case 0: $location.path('/login');break;
 case 1: $location.path('/profile');break;
 case 2: $location.url('/registration'); break;
 }
 }
 };
*/
function profileCtrl($scope, $mdDialog,$document) {
	
	 $scope.todos = [];
	  for (var i = 0; i < 15; i++) {
	    $scope.todos.push({
	      what: "Brunch this weekend?",
	      who: "Min Li Chan",
	      notes: "I'll be in your neighborhood doing errands."
	    });
	  }
	$scope.alert = '';
	$scope.showAlert = function(ev) {
		$mdDialog.show($mdDialog.alert().title('Congratulations!').content(
				'You have successfully registered for the event.').ariaLabel(
				'Alert Dialog Demo').ok('Got it!').targetEvent(ev));
	};
	
	$scope.toTheTop = function(){
		$document.scrollTopAnimated(0).then(function() {
		      console && console.log('You just scrolled to the top!');
		    });
	}
}

/*===============================Controller for login page=============================================*/
/*By using then() */

function loginCtrl($scope, $http, $mdToast, $animate,$mdDialog,$location) {
	
/*	 $scope.isOpen = false;
     $scope.demo = {
       isOpen: false,
       count: 0,
       selectedAlignment: 'md-left'
     };*/
	
	  $scope.toastPosition = {
			    bottom: false,
			    top: true,
			    left: false,
			    right: true
			  };
	 $scope.getToastPosition = function() {
		    return Object.keys($scope.toastPosition)
		      .filter(function(pos) { return $scope.toastPosition[pos]; })
		      .join(' ');
		  };
		  
		  $scope.user = {};
	$scope.submitUser = function() {
		//alert("submit clicked")
		$http({
			method :"POST",
			url :"submitUser",
			params : $scope.user
		}).then(function(response) {
			$scope.loginUser = response;
			//$mdDialog.show($mdDialog.alert().title('congratulations'+$scope.loginUser))
			$location.path("/profile");

		}), function(response) {
			var status = response.status;
			alert("inside error");
		}
	}
	/* var url = "/Spring3MVC/resources/json/users.json";
	$scope.submitUser = function(){
		$scope.names={};
		$http.get(url).success(function(myData){
			 alert(JSON.stringify(myData.users));
			//$scope.names =  $.parseJSON(JSON.parse(thisdata));
			$scope.names = myData.users;
			console.log("data displayed" + myData.users[0].firstName);
		})
		.error(function(response){
			console.log("no data found");
		})
	}
	 */
	$scope.resetUser = function() {
		$scope.user.userName = undefined;
		$scope.user.password = undefined;
		$mdToast.show(
		 $mdToast.simple()
	        .content('Data is cleared!')
	        .position($scope.getToastPosition())
	        .hideDelay(2000)
	        .action('OK')
	        );
		/*$mdToast.showSimple('data is cleared');*/
	}

};

/*===============================End of Controller for login page=============================================*/

function regCtrl($scope, $http, $mdToast, $window, $location) {
	 $scope.toastPosition = {
			    bottom: false,
			    top: true,
			    left: false,
			    right: true
			  };
	 $scope.getToastPosition = function() {
		    return Object.keys($scope.toastPosition)
		      .filter(function(pos) { return $scope.toastPosition[pos]; })
		      .join(' ');
		  };
		  
	$scope.url = "saveUsersData";
	$scope.method = "POST";
	$scope.newUser = {};
	$scope.submitForm = function() {

		$http({
			method : $scope.method,
			url : $scope.url,
			params : $scope.newUser
		}).success(
				function(data, status, headers, config) {
					$scope.data = data;
					$scope.firstName = data.firstName;
					//$scope.names = data.newUser;
					console.log("retrieved data" + data);
					console.log("data from names" + data.params);
					console.log("status" + status);
					$mdToast.show(
							 $mdToast.simple()
						        .content('Data is saved!')
						        .position($scope.getToastPosition())
						        .hideDelay(2000)
						        .action('OK')
						        );
					$location.path("/login")
				}).error(function(data, status) {
			console.log("error occurred" + status);
		})

	}

	$scope.reset = function() {
		$scope.newUser = undefined;
	}
}

/*================Controller for getting the individual user details==============*/

function sharedService() {

	var property = '';

	var propertyObj = {
		data : 'ObjectValue'
	};

	return {
		getProperty : function() {
			return property;
		},
		setProperty : function(value) {
			property = value;
		},
		getPropertyObj : function() {
			return propertyObj;
		}
	}
}

function resultController($scope, $http, $rootScope, $location, $routeParams,$mdDialog,$timeout,
		sharedService) {
	$scope.prop1 = "property1";
	$scope.message = "List Of Users";
	$scope.registeredUsers = {};
	$http({
		url : "getListOfUsers",
		method : "POST",
		params : $scope.registeredUsers
	}).success(function(data, status) {
		$scope.users = data;
		console.log("inside success block");
	}).error(function() {
		console.log("error");
	})
	$scope.getUserInfo = function(userId) {
		$location.path("/userDetails");
		sharedService.setProperty(userId);
	}

	$scope.editUserData = function(userId) {
		$location.path("/userDetails");
		sharedService.setProperty(userId);
	}

	$scope.deleteUserData = function(userId) {
		//sharedService.setProperty(userId);
		//alert(userId);
		$http({
			method : "POST",
			url : "deleteUserDetails/" + userId,
		}).success(function(data) {
			//$scope.data = data;
			 $mdDialog.show(
				      $mdDialog.alert()
				        /*.title('Suddenly, a redial')*/
				        .content('Data is deleted successfully')
				        .ok('OK')
				    );
			//$scope.$apply();
			 $timeout(function(){
			$location.path("/login")},2000);
		}).error(function(data, status) {
			console.log(status);
		})
	}

	$scope.goBack = function() {
		$location.path("/login");
	}

}

function listController($scope, $http, $routeParams, sharedService) {

	$scope.prop2 = "second";
	$scope.thirdProp = sharedService.getProperty() + $scope.prop2;
	console.log("after adding the third property" + $scope.thirdProp);
	$scope.combined = $scope.prop1 + $scope.prop2;
	$scope.both = sharedService.getProperty() + $scope.prop2;
	$scope.bothWithObj = sharedService.getPropertyObj().data + $scope.prop2;
	console.log($scope.combined + "service is working");//it won't work 
	console.log($scope.both + "service is working"); //it will work
	console.log($scope.bothWithObj + "with object");

	$scope.userId = sharedService.getProperty();
	console.log("userid" + $scope.userId);
	$http({
		method : "POST",
		url : "getDetailsOfUser/" + $scope.userId,
	}).success(function(data, status) {
		$scope.usersData = data;
		console.log($scope.usersData);
		console.log("success");
	}).error(function(data, status) {
		console.log("error");
		$scope.visible = false;
	})

	$scope.goBack = function() {
		$location.path("/list");
		$scope.$apply();
	}

}

/*=======================Controller for edit page======================*/

function saveEditedDetailsCtrl($scope, $http, $routeParams, sharedService,
		$location) {
	$scope.data = {
			cb1 : true,
			cb3 : false
	}
	$scope.onChange = function(switchState){
		//$scope.message = "Edit is " + switchState;
	}
	$scope.userId = sharedService.getProperty();
	//alert(userId);
	$scope.editMessage = "Edit the Information of User";
	$scope.displayRecords = false;
	$http({
		method : "POST",
		url : "getEditableUsersData/" + $scope.userId,
	}).success(function(data, status) {
		$scope.displayRecords = true;
		$scope.editedUser = data;
		console.log($scope.editedUser);
		console.log("success");
	}).error(function(data, status) {
		console.log("error");
	})

	$scope.url = "saveEditedDetails";
	$scope.method = "POST";
	$scope.editedUser = {};
	if ($scope.editedUser != null) {
		$scope.saveEditedData = function() {

			$http({
				method : $scope.method,
				url : $scope.url,
				params : $scope.editedUser
			}).success(function(data) {
				$scope.data = data;
				alert("data is successfully updated");
				//$window.location.href = '/list';
				$location.path("/list");
				console.log("saved data after editing" + data);
			}).error(function(data, status) {
				console.log(status);
			})
		}
	} else {
		alert("Please fill the details");
	}

	$scope.clearEditedData = function() {
		$scope.editedUser = {};
	}
	$scope.goBack = function() {
		$location.path("/list");
		$scope.$apply();
	}

}


function headerDirective(){
	return{
		restrict:'AE',
		replace:'true',
		template:'<h2>Profile</h2>'
	}
	
}

function helloWorld(){
	return{
		restrict:'AE',
		replace:'true',
		template:'<p style="background-color:{{color}}">Hello World!</p>',
		link:function(scope,elem,attr){
			elem.bind('click',function(){
				elem.css('background-color','white');
				//scope.$apply(function(){
					scope.color="white";
				//});
			});
			elem.bind('mouseover',function(){
				elem.css('cursor','pointer');
			});
		}
	}
}

function gotoTop($document){
	return{
		restrict:'AE',
		replace:true,
		link:function(scope,elem,attr){
			if($document.scrollTop<100){
				scope.visible=false;
				alert("100");
			}
			else{
				scope.visible = true;
			}
		}
	}
}

function selectCtrl($scope){
	 $scope.toppings = [
	                    { category: 'meat', name: 'Pepperoni' },
	                    { category: 'meat', name: 'Sausage' },
	                    { category: 'meat', name: 'Ground Beef' },
	                    { category: 'meat', name: 'Bacon' },
	                    { category: 'veg', name: 'Mushrooms' },
	                    { category: 'veg', name: 'Onion' },
	                    { category: 'veg', name: 'Green Pepper' },
	                    { category: 'veg', name: 'Green Olives' }
	                  ];
   }


function DemoCtrl ($timeout, $q) {
    var self = this;
    // list of `state` value/display objects
    self.states        = loadAll();
    self.selectedItem  = null;
    self.searchText    = null;
    self.querySearch   = querySearch;
    // ******************************
    // Internal methods
    // ******************************
    /**
     * Search for states... use $timeout to simulate
     * remote dataservice call.
     */
    function querySearch (query) {
      var results = query ? self.states.filter( createFilterFor(query) ) : [];
      return results;
    }
    /**
     * Build `states` list of key/value pairs
     */
    function loadAll() {
      var allStates = 'Alabama, Alaska, Arizona, Arkansas, California, Colorado, Connecticut, Delaware,\
              Florida, Georgia, Hawaii, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky, Louisiana,\
              Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Montana,\
              Nebraska, Nevada, New Hampshire, New Jersey, New Mexico, New York, North Carolina,\
              North Dakota, Ohio, Oklahoma, Oregon, Pennsylvania, Rhode Island, South Carolina,\
              South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia,\
              Wisconsin, Wyoming';
      return allStates.split(/, +/g).map( function (state) {
        return {
          value: state.toLowerCase(),
          display: state
        };
      });
    }
    /**
     * Create filter function for a query string
     */
    function createFilterFor(query) {
      var lowercaseQuery = angular.lowercase(query);
      return function filterFn(state) {
        return (state.value.indexOf(lowercaseQuery) === 0);
      };
    }
  }

