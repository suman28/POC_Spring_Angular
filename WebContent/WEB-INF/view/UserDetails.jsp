
<div flex layout="row">
	<div flex="10"></div>
	<div flex="80">
		<md-card class="md-whiteframe-z2 md-padding">
		<div data-ng-controller="listController">
			<!-- 	<div layout="row" layout-align="center center" layout-padding>
				<h1 layout="row" layout-align="center center">Submitted User
					Information</h1>
			</div> -->
			<md-list> <md-subheader class="md-no-sticky">Submitted
			User Information</md-subheader> <md-list-item layout="row">
			<div flex="50" class="md-subheader">First Name</div>
			<div flex="50">{{usersData.userId}}</div>
			</md-list-item> <md-divider></md-divider> <md-list-item layout="row">
			<div flex="50" class="md-subheader">Last Name</div>
			<div flex="50">{{usersData.firstName}}</div>
			</md-list-item> <md-divider></md-divider> <md-list-item layout="row">
			<div flex="50" class="md-subheader">Email ID</div>
			<div flex="50">{{usersData.lastName}}</div>
			</md-list-item> <md-divider></md-divider> <md-list-item layout="row">
			<div flex="50" class="md-subheader">Contact Number</div>
			<div flex="50">{{usersData.contactNo}}</div>
			</md-list-item> <md-divider></md-divider> </md-list>

		</div>
		</md-card>
		<md-card class="md-whiteframe-z2 md-padding">
		<div data-ng-controller="saveEditedDetailsCtrl"
			data-ng-show="displayRecords">
			<!-- <md-switch layout-align="end" ng-model="data.switchState" aria-label="Switch"
				ng-change="onChange(data.switchState)">{{message}}</md-switch> -->
	<!-- 		<md-button flex="70" layout-align="start" data-ng-click="goBack()">
			<i class="">back</i></md-button>
			<md-switch flex="30" layout-align="end" ng-model="data.switchState"
				aria-label="Switch" ng-true-value="'enabled'"
				ng-false-value="'disabled'">Edit is :
			{{data.switchState}}</md-switch>
 -->
			<!-- <div layout="row" layout-align="center center">
				<h1 layout="row" layout-align="center center">{{editMessage}}</h1>
			</div> -->
			 <md-subheader class="md-no-sticky">{{editMessage}}</md-subheader>
			
			<md-checkbox ng-model="checked" ng-init="checked=true">Non
			editable mode {{checked}}</md-checkbox>
			<form name="editForm">
			<div layout layout-sm="column">
				<md-input-container flex> <label>User
					ID</label> <input data-ng-disabled="true" type="text" name="userId"
					data-ng-model="editedUser.userId"> </md-input-container>
				<md-input-container flex> <label>First
					Name</label> <input type="text" name="firstName"
					data-ng-model="editedUser.firstName" data-ng-disabled="checked">
				</md-input-container>
			</div>
			<div layout layout-sm="column">
				<md-input-container flex> <label>Last
					Name</label> <input type="text" name="lastName"
					data-ng-model="editedUser.lastName" data-ng-disabled="checked">
				</md-input-container>
				<md-input-container flex> <label>Password</label>
				<input type="text" name="password"
					data-ng-model="editedUser.password" data-ng-disabled="checked">
				</md-input-container>
			</div>
			<div layout layout-sm="column">
				<md-input-container flex> <label>Re
					Password</label> <input type="text" name="rePassword"
					data-ng-model="editedUser.rePassword" data-ng-disabled="checked">
				</md-input-container>
				<md-input-container flex> <label>Email
					ID</label> <input type="text" name="email" data-ng-model="editedUser.email"
					data-ng-disabled="checked"> </md-input-container>
			</div>
			<div layout layout-sm="column">
				<md-input-container flex> <label>Contact
					Number</label> <input type="text" name="contactNo"
					data-ng-model="editedUser.contactNo" data-ng-disabled="checked">
				</md-input-container>
				<!-- <md-input-container flex>
				<label>User Name</label>
				<input type="text" name="userName"
					data-ng-model="editedUser.userName" ng-disabled="checked">
				</md-input-container> -->
			</div>
				<!-- 	<table class="md-table">
					<tbody class="md-table-body">
						<tr>
							<td><label>User ID</label></td>
							<td><md-input-container> <input
										data-ng-disabled="true" type="text" name="userId"
									data-ng-model="editedUser.userId"></md-input-container></td>
							<td>
						</tr>
						<tr>
							<td><label>First Name</label></td>
							<td><md-input-container> <input
									type="text" name="firstName"
									data-ng-model="editedUser.firstName" data-ng-disabled="checked"></md-input-container></td>
						<tr>
							<td><label>Last Name</label></td>
							<td><md-input-container> <input
									type="text" name="lastName" data-ng-model="editedUser.lastName"
									data-ng-disabled="checked"></md-input-container></td>
						</tr>

						<tr>
							<td><label>Password</label></td>
							<td><md-input-container> <input
									type="text" name="password" data-ng-model="editedUser.password"
									data-ng-disabled="checked"></md-input-container></td>
						</tr>
						<tr>
							<td><label>Re Password</label></td>
							<td><md-input-container> <input
									type="text" name="rePassword"
									data-ng-model="editedUser.rePassword"
									data-ng-disabled="checked"></md-input-container></td>
						</tr>
						<tr>
							<td><label>Email ID</label></td>
							<td><md-input-container> <input
									type="text" name="email" data-ng-model="editedUser.email"
									data-ng-disabled="checked"></md-input-container></td>
						</tr>
						<tr>
							<td><label>Contact Number</label></td>
							<td><md-input-container> <input
									type="text" name="contactNo"
									data-ng-model="editedUser.contactNo" data-ng-disabled="checked"></md-input-container></td>
						</tr>
						<tr>
					<td><label>User Name</label></td>
					<td><md-input-container> <input
							type="text" name="userName" data-ng-model="editedUser.userName" ng-disabled="checked"></md-input-container></td>
					
				</tr>
					</tbody>
				</table> -->
				<div layout="row" layout-align="center center">
					<md-button class="md-primary md-raised" ng-click="saveEditedData()">Save</md-button>
					<md-button class="md-raised" ng-click="clearEditedData()">Reset</md-button>
				</div>
			</form>
		</div>
		</md-card>
	</div>
	<div flex="10"></div>
</div>