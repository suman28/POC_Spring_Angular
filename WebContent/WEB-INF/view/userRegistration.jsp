
<!-- registration fields page -->
<div class="md-padding md-margin" id="contactUs" layout="row"
	layout-padding layout-align="center center" flex="100"
	data-ng-controller="regCtrl">
	<div flex="30" flex-sm="100" class="md-whiteframe-z2" style="background: #fff;">
		<div layout-align="center">
				<md-content class="md-padding">
					<div layout="column">
						<form name="registrationForm">
						<div layout-align="center center">
							<h2>Contact Us</h2>
						</div>
							<md-input-container flex>
								 <label>First Name</label>
								 <input type="text" name="firstName" data-ng-model="newUser.firstName" />
						 	</md-input-container>
							<md-input-container flex>
								 <label>Last Name</label> 
								 <input type="text" name="lastName" data-ng-model="newUser.lastName" /> 
							</md-input-container>
							<md-input-container flex>
								 <label>User ID</label>
								 <input type="text" name="userId" data-ng-model="newUser.userId" />
							 </md-input-container>
							<md-input-container flex>
								 <label>Password</label>
								 <input type="password" name="password" data-ng-model="newUser.password" /> 
							</md-input-container>
							<md-input-container flex>
								 <label>Re enter password</label>
								 <input type="password" name="rePassword" data-ng-model="newUser.rePassword" />
							</md-input-container>
							<md-input-container flex> 
								<label>Email</label>
								<input type="email" name="email" data-ng-model="newUser.email" /> 
							</md-input-container>
							<md-input-container flex> 
								<label>Contact Number</label>
								<input type="text" name="contactNo" data-ng-model="newUser.contactNo" /> 
							</md-input-container>
						<!-- 	<md-input-container flex> 
								<label>User Name</label>
								<input type="text" name="userName" placeholder="${editUser.userName}" data-ng-model="newUser.userName" /> 
							</md-input-container> -->
					
				</md-content>
				<div layout="row" flex layout-align="center center" layout-padding>
					<md-button class="md-primary md-raised" ng-click="submitForm()">Submit</md-button>
					<md-button class="md-accent md-raised" ng-click="reset()">Reset</md-button>
				</div>
			</form>
			</div>
		</div>
	</div>
	<!--<ul>
	 <div layout="row" flex layout-align="center center" layout-padding>
		<md-button class="md-primary md-raised" ng-click="basket.addUser(newUser);newUser={}">Submit</md-button>
	</div>
		 <li data-ng-repeat="item in basket.items()">
            {{item}}<br />
        </li></ul> -->
</div>


<!--  <div data-ng-controller="regCtrl">
<form name="registrationForm" method="post">
	<label>First Name</label>
	<input type="text" name="firstName" ng-model="firstName" /><br/>
	
	 <label>Last Name</label> 
	<input type="text" name="lastName" ng-model="lastName" /> <br/>
	
	 <label>User Name</label>
	 <input type="text" name="userName" ng-model="userName" /><br/>
	 
	 <label>Password</label>
	<input type="password" name="password" ng-model="password" /> <br/>
	
	 <label>Re enter password</label>
     <input type="password" name="rePassword" ng-model="rePassword" /> <br/>
     
     <label>Email</label>
		<input type="email" name="email" ng-model="email" />  <br/>
		
	<label>Contact Number</label>
		<input type="text" name="contactNo" ng-model="contactNo" />  <br/>
		
		<input type="submit" value="submit"/>
</form>
</div> -->
<!-- End of registration page -->


<!-- <div class="fsm-dashboard">
			<div class="fsm-header" >
				<div class="fsm-logo" >Logo Here</div>
				<div fsm-menu-button >
					<i class="fa fa-bars fa-2x fsm-menu-button-open"></i>
					<i class="fa fa-arrow-left fa-2x fsm-menu-button-closed"></i>
				</div>
			</div>
			<div class="fsm-menu">
				Menu
				<ul>
					<li>Menu Item</li>

				</ul>
			</div> -->
<!-- <div class="fsm-page-content">

				<div id="area1" class="section text-area">
			      
			        <h2 fsm-sticky-header scroll-body="'#area1'" scroll-stop="50">Just a block of text</h2>
			        <div class="text-content"> 
						<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at commodo neque, in pellentesque massa. Quisque nibh nisi, eleifend at finibus quis, euismod in metus. Vestibulum sit amet ultricies enim. Nullam odio elit, sollicitudin non varius sit amet, pretium eu metus. Mauris lacinia feugiat odio, et bibendum ligula consectetur et. Proin aliquet eros vel pulvinar mattis. Cras a rutrum lorem, ut luctus dolor. Sed vel eros ut orci sagittis euismod. Curabitur gravida elit sit amet mi rhoncus malesuada.
						</p>
						<p>
						Nunc non massa vel odio tempor hendrerit ut id erat. Nunc auctor mattis sem in gravida. Vestibulum finibus vehicula purus nec gravida. Sed ac vehicula massa, id tristique tortor. Proin euismod, libero non consectetur consectetur, urna nulla dignissim urna, vel laoreet lectus lorem a dui. Proin ac est mauris. Cras et nisl id velit vulputate posuere. Cras convallis bibendum ligula non accumsan.
						</p>
						<p>
						Nunc auctor, velit a gravida iaculis, turpis augue egestas purus, sit amet laoreet eros arcu quis nisl. Suspendisse pellentesque in dolor nec rutrum. Nullam dictum imperdiet luctus. Sed et efficitur urna. Pellentesque volutpat sagittis nisi, sodales interdum nulla mattis a. Etiam vitae elit ac nibh tempor tristique. Nullam quis diam mi. Etiam pretium vel erat sed porta.
						</p>
						<p>
						Donec finibus ut nunc ut ultricies. Duis a felis dui. Nullam ante odio, commodo at posuere eget, tristique at orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas facilisis magna et libero sodales convallis. Fusce et tincidunt nisi. Nulla vitae egestas risus. Nunc rutrum nisl et posuere eleifend. Phasellus ac nisl ut orci suscipit tincidunt.
						</p>
						<p>
						Vivamus vitae molestie metus. Aenean ac nisi sed sem efficitur aliquam. Nunc varius justo sed ante blandit, ac luctus eros ullamcorper. Mauris lacus purus, cursus at nisi eu, ultricies luctus augue. Proin tristique tempor velit sit amet venenatis. Suspendisse potenti. Sed congue turpis sit amet risus facilisis, non laoreet nunc condimentum. Vivamus ornare orci bibendum nisl iaculis accumsan. Mauris volutpat fermentum enim, ac tristique metus vehicula a.
						</p>
					</div>
	      
				</div>
	      
				<div id="area2" class="section text-area">
			      
			        <h2 fsm-sticky-header scroll-body="'#area2'" scroll-stop="50">Another block of text</h2>
					<div class="text-content"> 
						<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at commodo neque, in pellentesque massa. Quisque nibh nisi, eleifend at finibus quis, euismod in metus. Vestibulum sit amet ultricies enim. Nullam odio elit, sollicitudin non varius sit amet, pretium eu metus. Mauris lacinia feugiat odio, et bibendum ligula consectetur et. Proin aliquet eros vel pulvinar mattis. Cras a rutrum lorem, ut luctus dolor. Sed vel eros ut orci sagittis euismod. Curabitur gravida elit sit amet mi rhoncus malesuada.
						</p>
						<p>
						Nunc non massa vel odio tempor hendrerit ut id erat. Nunc auctor mattis sem in gravida. Vestibulum finibus vehicula purus nec gravida. Sed ac vehicula massa, id tristique tortor. Proin euismod, libero non consectetur consectetur, urna nulla dignissim urna, vel laoreet lectus lorem a dui. Proin ac est mauris. Cras et nisl id velit vulputate posuere. Cras convallis bibendum ligula non accumsan.
						</p>
						<p>
						Nunc auctor, velit a gravida iaculis, turpis augue egestas purus, sit amet laoreet eros arcu quis nisl. Suspendisse pellentesque in dolor nec rutrum. Nullam dictum imperdiet luctus. Sed et efficitur urna. Pellentesque volutpat sagittis nisi, sodales interdum nulla mattis a. Etiam vitae elit ac nibh tempor tristique. Nullam quis diam mi. Etiam pretium vel erat sed porta.
						</p>
						<p>
						Donec finibus ut nunc ut ultricies. Duis a felis dui. Nullam ante odio, commodo at posuere eget, tristique at orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas facilisis magna et libero sodales convallis. Fusce et tincidunt nisi. Nulla vitae egestas risus. Nunc rutrum nisl et posuere eleifend. Phasellus ac nisl ut orci suscipit tincidunt.
						</p>
						<p>
						Vivamus vitae molestie metus. Aenean ac nisi sed sem efficitur aliquam. Nunc varius justo sed ante blandit, ac luctus eros ullamcorper. Mauris lacus purus, cursus at nisi eu, ultricies luctus augue. Proin tristique tempor velit sit amet venenatis. Suspendisse potenti. Sed congue turpis sit amet risus facilisis, non laoreet nunc condimentum. Vivamus ornare orci bibendum nisl iaculis accumsan. Mauris volutpat fermentum enim, ac tristique metus vehicula a.
						</p>
					</div>
				</div>

				<table id="testtable" fsm-big-data="dataPage of test.data take 50">
			        <thead>
			        	<tr fsm-sticky-header scroll-body="'#testtable'" scroll-stop="50">
			            	<th tabindex="1" fsm-sort="id">Number</th>
			            	<th tabindex="1" fsm-sort="column1">Column One</th>
			            	<th tabindex="1" fsm-sort="column2">Column Two</th>
							<th >Column Three</th>		             
			        	</tr>
			        </thead>
			        <tbody>
			          <tr ng-repeat="row in dataPage">
			             <td >{{row.id}}</td>
			             <td >{{row.column1}}</td>
			             <td >{{row.column2}}</td>
			             <td >{{row.longText}}.</td>
			          </tr>
					</tbody>
				</table>

			</div>
		</div>
 -->



