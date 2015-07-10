

<!-- Start of Login page -->

<%-- <md-toolbar style="background-color: rgb(94,159,163);">
<div class="md-toolbar-tools" layout="row">

	<div layout="row" flex layout-align="center center">
		<div>
			<h2>
				<!-- <span>CISCO CAPITAL</span> -->
				<img
					src="<%=request.getContextPath()%>/resources/images/ciscologo.png" />
			</h2>
			<span flex></span>
		</div>
	</div>

</div>
</md-toolbar> --%>
<div flex="100" class="md-padding md-margin" id="login" layout="row"
	layout-align="center center" layout-padding
	data-ng-controller="loginCtrl">
	<div class="md-whiteframe-z2" flex="30" flex-sm="100"
		style="background: #fff; vertical-align: middle">
		<div layout="row" layout-align="center">
			<h2>Login</h2>
		</div>

		<div layout="column">
			<form novalidate name="loginForm">
				<md-input-container flex> <label>User
					Name</label> <input type="text" name="userName" ng-model="user.userName"
					id="userName" ng-minlength="3" ng-maxlenghth="20" required />
				<div ng-show="lognForm.$submitted || loginForm.userName.$touched">
					<small ng-show="loginForm.userName.$error.required">UserName
						is required</small>
				</div>
				</md-input-container>
				<md-input-container flex> <label>Password</label>
				<input type="password" name="password" ng-model="user.password"
					id="password" required /> </md-input-container>



				<div layout="row" flex layout-align="center" layout-padding>
					<md-button class="md-primary md-raised" ng-click="submitUser()">Submit</md-button>
					<md-button class="md-raised" ng-click="resetUser()">Reset</md-button>
				</div>

				<div layout="row" flex layout-align="end">
					<!-- <a href="#/registration">New User? Register</a> --> <a href="#/list">Forgot
						Password?</a> 
				</div>
			</form>
		</div>
	</div>
	
</div>
<!-- 
	<md-fab-toolbar md-open="demo.isOpen"  ng-class="demo.selectedAlignment">
    <md-fab-trigger class="align-with-text">
      <md-button aria-label="menu" class="md-fab md-primary">
        <md-icon md-svg-src="img/icons/menu.svg"></md-icon>
       <i class="ion-home"></i>
      </md-button>
    </md-fab-trigger>
    <md-toolbar>
      <md-fab-actions class="md-toolbar-tools">
        <md-button aria-label="comment" class="md-icon-button">
         <i class="ion-home"></i>
          <md-icon md-svg-src="img/icons/ic_comment_24px.svg"></md-icon>
        </md-button>
        <md-button aria-label="label" class="md-icon-button">
         <i class="ion-home"></i>
          <md-icon md-svg-src="img/icons/ic_label_24px.svg"></md-icon>
        </md-button>
        <md-button aria-label="photo" class="md-icon-button">
         <i class="ion-home"></i>
          <md-icon md-svg-src="img/icons/ic_photo_24px.svg"></md-icon>
        </md-button>
      </md-fab-actions>
    </md-toolbar>
	</md-fab-toolbar>
	 -->
	
<!-- <div ng-controller="selectCtrl">
	<md-select ng-model="topping" placeholder="Topping"> <md-optgroup
		label="Meats"> <md-option ng-value="topping.name"
		ng-repeat="topping in toppings | filter: {category: 'meat' }">{{topping.name}}</md-option>
	</md-optgroup> <md-optgroup label="Veggies"> <md-option
		ng-value="topping.name"
		ng-repeat="topping in toppings | filter: {category: 'veg' }">{{topping.name}}</md-option>
	</md-optgroup> </md-select>
</div> -->

<!-- End of login page -->
<!-- 

<div ng-controller="DemoCtrl as ctrl" layout="column">
  <md-content class="md-padding">
    <form ng-submit="$event.preventDefault()" name="searchForm">
      <p>The following example demonstrates floating labels being used as a normal form element.</p>
      <div layout-gt-sm="row">
        <md-input-container flex>
          <label>Name</label>
          <input type="text"/>
        </md-input-container>
        <md-autocomplete flex required
            md-input-name="autocompleteField"
            md-selected-item="ctrl.selectedItem"
            md-search-text="ctrl.searchText"
            md-items="item in ctrl.querySearch(ctrl.searchText)"
            md-item-text="item.display"
            md-floating-label="Favorite state">
          <md-item-template>
            <span md-highlight-text="ctrl.searchText">{{item.display}}</span>
          </md-item-template>
          <div ng-messages="searchForm.autocompleteField.$error" ng-if="searchForm.autocompleteField.$touched">
            <div ng-message="required">You <b>must</b> have a favorite state.</div>
            <div ng-message="minlength">Your entry is not long enough.</div>
            <div ng-message="maxlength">Your entry is too long.</div>
          </div>
        </md-autocomplete>
      </div>
    </form>
  </md-content>
</div>
 -->