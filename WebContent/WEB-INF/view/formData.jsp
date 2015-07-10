
<div data-ng-controller="editController">
	<h1>{{message}}</h1>
	<form name="editForm" method="POST">
		<table class="table table-striped">

			<tbody>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName"
						value="{{editUser.firstName}}" data-ng-model="editUser.firstName"></td>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName"
						value="editUser.lastName" data-ng-model="editUser.lastName"></td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="userId" value="editUser.userId"
						data-ng-model="editUser.userId"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password"
						value="editUser.password" data-ng-model="editUser.password"></td>
				</tr>
				<tr>
					<td>Re Password</td>
					<td><input type="text" name="rePassword"
						value="editUser.rePassword" data-ng-model="editUser.rePassword"></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="text" name="email" value="editUser.email"
						data-ng-model="editUser.email"></td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="contactNo"
						value="editUser.contactNo" data-ng-model="editUser.contactNo"></td>
				</tr>
				<tr>
					<td><label>User Name</label></td>
					<td><md-input-container> <input
							type="text" name="userName" value="users.userName"
							data-ng-model="editUser.userName"></td>
					</md-input-container>
				</tr>
			</tbody>
		</table>

		<md-button ng-click="">Save</md-button>
	</form>
</div>