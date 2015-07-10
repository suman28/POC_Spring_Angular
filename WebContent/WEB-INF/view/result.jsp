
<div layout="row" layout-sm="column">
	<div flex="10"></div>
	
	<div flex="80" flex-sm="100" style="  margin: 8px;">
	<md-subheader class="md-no-sticky">Users List</md-subheader>
		<div data-ng-controller="resultController" class="md-whiteframe-z2">


 

				
  <md-content class='md-whiteframe-z5'>
    
    <md-list class="results-list">
      
      
     
      
      
      <md-list-item class="md-3-line" ng-repeat="user in users" style="border-bottom: 1px solid#ddd;">
      
        
        <div class="md-list-item-text" layout="row" layout-sm="column">
        <div flex="5"><img src="http://wwwin.cisco.com/dir/photo/std/musantho.jpg" class="circle-img-list" alt="{{user.firstName}}"></div>
          <div flex="25" flex-sm="100" class="list-item-text">{{ user.firstName }}&nbsp;{{user.lastName}}</div>
          <p flex="20" flex-sm="100" data-ng-click="getUserInfo(user.userId)"
							data-ng-model="registeredUsers.userId" class="list-item-text">{{ user.userId }}</p>
			 <p flex="20" flex-sm="100" class="list-item-text">{{ user.contactNo }}</p>
          <p flex="25" flex-sm="100" class="list-item-text">{{ user.email }}</p>
					<div flex="5" flex-sm="100">
						<md-menu md-position-mode="target-right target" >
				          <md-button aria-label="Open demo menu" class="md-icon-button" ng-click="$mdOpenMenu($event)">
				           <i class="ion-android-more-vertical icon-more"></i>
				          </md-button>
				          <md-menu-content width="4" >
				            <md-menu-item>
				              <md-button>
				                  <a class="edit-link" style="text-decoration:none;font-size:0.9em;" data-ng-click="editUserData(user.userId)"
							href=""><span class="ion-edit">&nbsp;&nbsp;Edit Details</span><md-tooltip>Edit</md-tooltip></a>
				              </md-button>
				            </md-menu-item>
				            <md-menu-item>
				              <md-button>
				                  <a class="delete-link"  style="text-decoration:none;font-size:0.9em;" data-ng-click="deleteUserData(user.userId)"
							href=""><span class="ion-trash-b">&nbsp;&nbsp;Remove From DB</span><md-tooltip>Delete</md-tooltip></a>
				              </md-button>
				            </md-menu-item>
				          </md-menu-content>
				        </md-menu>
					</div>
        </div>
        
        <!-- <md-checkbox class="md-secondary" ></md-checkbox> -->
       <!--  <md-menu>
		 Trigger element is a md-button with an icon
		 <md-button ng-click="$mdOpenMenu()" class="md-icon-button" aria-label="Open sample menu">
		   <md-icon md-svg-icon="call:phone">hello</md-icon>
		 </md-button>
		 <md-menu-content>
		   <md-menu-item><md-button ng-click="doSomething()">Do Something</md-button></md-menu-item>
		 </md-menu-content>
		</md-menu> -->
        
        
        
        
        
      
        
        
         <md-divider></md-divider>
      </md-list-item>
     
      
     </md-list>
     
     
 </md-content>

  		
        











<%-- 



			<!-- <md-button ng-click="goBack()">back</md-button> -->
			<md-list> 
			
			<md-subheader class="md-no-sticky">{{message}}</md-subheader>
			
			
			
			<md-list-item md-ink-ripple class="md-clickable my-list" layout="row" ng-repeat="user in users">
				
				
				
				
				
				
					<div flex="10" flex-sm="20">
						<img
							src="<%=request.getContextPath()%>/resources/images/avatar5.png" src="http://wwwin.cisco.com/dir/photo/std/musantho.jpg"
							class="circle-img" height="40px" width="40px" />
					</div>
					<div flex="20" flex-sm="50">
						<a href="" data-ng-click="getUserInfo(user.userId)"> <span
							data-ng-model="registeredUsers.userId">{{ user.userId }}</span>
						</a>
					</div>
					<div flex="20" flex-sm="50">
						<span data-ng-model="registeredUsers.firstName"
							style="font-weight: 700">{{ user.firstName }}</span>
					</div>
					<div flex="25" flex-sm="50">
						<span data-ng-model="registeredUsers.email">{{
							user.email }}</span>
					</div>
					<div flex="10" flex-sm="50">
						<a class="edit-link" data-ng-click="editUserData(user.userId)"
							href=""><span class="ion-edit"></span><md-tooltip>Edit</md-tooltip></a>
					</div>
					<div flex="10" flex-sm="50">
						<a class="delete-link" data-ng-click="deleteUserData(user.userId)"
							href=""><span class="ion-trash-b"></span><md-tooltip>Delete</md-tooltip></a>
					</div>
					<div flex="5">
						<span class="ion-android-more-vertical"></span>
					</div>
					
					 <md-checkbox class="" ng-model="topping.wanted"></md-checkbox>
					 
					 
			
			</md-list-item> 
			
			</md-list>

 --%>



			<!-- 	<div layout="row" layout-align="center center">
				<h1 layout="row" layout-align="center center">{{message}}</h1>
			</div>
			<table class="md-table">
				<thead class="md-table-header">
					<tr>
						<th>USER ID</th>
						<th>First Name</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr data-ng-repeat="user in users">
						<td><a href="" data-ng-click="getUserInfo(user.userId)">
								<span data-ng-model="registeredUsers.userId">{{
									user.userId }}</span>
						</a></td>
						<td><span data-ng-model="registeredUsers.firstName">{{
								user.firstName }}</span></td>
						<td><md-button class="md-primary md-raised"
								data-ng-click="editUserData(user.userId)">Edit</md-button></td>
						<td><md-button class="md-warn"
								data-ng-click="deleteUserData(user.userId)" href="">Delete</md-button></td>
					</tr>
				</tbody>
			</table> -->
		</div>
	</div>
	<div flex="10"></div>
</div>

