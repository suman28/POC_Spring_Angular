<!-- Code for Personal Details -->

<div flex="100" layout="row" class="md-padding md-margin" id="profile"
	layout-align="center center" layout-padding ng-controller="profileCtrl">
	<md-button class="md-fab md-fab-bottom-right md-mini md-primary"
		du-smooth-scroll du-scrollspy aria-label="top" ng-click="toTheTop()" ng-hide="visible" goto-top>
	<i class="fa fa-arrow-up"></i></md-button>
	<div flex="30" flex-sm="100" class="md-whiteframe-z2"
		style="background: #fff;">
		<div layout-align="center">
			<div layout="row" layout-align="center center" header-directive></div>
			<input type="text" data-ng-model="color"
				placeholder="enter any color" />
			<hello:world />
			<md-content class="md-padding">
			<div layout="column">
				<form ng-submit="$event.preventDefault()" name="searchForm">
					<md-input-container flex> <label>Name</label>
					<input type="text" /> </md-input-container>
					<p>
						<span style="font-weight: 700">Gender:</span> <span
							class="radioValue">{{ data.group1 }}</span>
					</p>
					<md-radio-group ng-model="data.group1"> <md-radio-button
						value="Male" class="md-primary">Male</md-radio-button> <md-radio-button
						value="Female"> Female </md-radio-button> </md-radio-group>
					<md-input-container flex> <label>Date
						Of Birth</label> <input type="date" /> </md-input-container>
					<md-input-container flex> <label>Contact
						Number</label> <input type="text" /> </md-input-container>
					<md-input-container flex> <label>Address</label>
					<textarea ng-model="user.biography" columns="1" md-maxlength="150"></textarea>
					</md-input-container>
				</form>
				<div layout="row" flex layout-align="center center" layout-padding>
					<md-button class="md-primary md-raised"
						ng-click="showAlert($event)">Submit</md-button>
				</div>
			</div>
			</md-content>
		</div>
	</div>
	<div layout="column" layout-fill layout-margin layout-padding>
  <md-toolbar md-scroll-shrink>
    <div class="md-toolbar-tools">
      <h3>
        <span>My App Title</span>
      </h3>
    </div>
  </md-toolbar>
  <md-content style="height: 600px;" layout-padding>
    <md-list>
      <md-list-item class="md-3-line" ng-repeat="item in todos">
        <div class="md-list-item-text">
          <h3>{{item.what}}</h3>
          <h4>{{item.who}}</h4>
          <p>
            {{item.notes}}
          </p>
        </div>
        <md-divider inset></md-divider>
      </md-list-item>
    </md-list>
  </md-content>
</div>
	

	
		<div layout="column" layout-fill layout-margin layout-padding>
  <md-toolbar md-scroll-shrink>
    <div class="md-toolbar-tools">
      <h3>
        <span>My App Title</span>
      </h3>
    </div>
  </md-toolbar>
  <md-content style="height: 600px;" layout-padding>
    <md-list>
      <md-list-item class="md-3-line" ng-repeat="item in todos">
        <div class="md-list-item-text">
          <h3>{{item.what}}</h3>
          <h4>{{item.who}}</h4>
          <p>
            {{item.notes}}
          </p>
        </div>
        <md-divider inset></md-divider>
      </md-list-item>
    </md-list>
  </md-content>
</div>


	<div layout="column" layout-fill layout-margin layout-padding>
  <md-toolbar md-scroll-shrink>
    <div class="md-toolbar-tools">
      <h3>
        <span>My App Title</span>
      </h3>
    </div>
  </md-toolbar>
  <md-content style="height: 600px;" layout-padding>
    <md-list>
      <md-list-item class="md-3-line" ng-repeat="item in todos">
        <div class="md-list-item-text">
          <h3>{{item.what}}</h3>
          <h4>{{item.who}}</h4>
          <p>
            {{item.notes}}
          </p>
        </div>
        <md-divider inset></md-divider>
      </md-list-item>
    </md-list>
  </md-content>
</div>
</div>


<!-- End of Personal Details page -->
