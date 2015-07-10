
<div ng-controller="AppCtrl">
	<md-toolbar style="background-color: rgb(94,159,163);">
	<div class="md-toolbar-tools" layout="row">
		<div flex="20">
			<md-button ng-click="toggleLeft()" class="md-primary md-mini"
				layout-padding style="border-radius:50%;" aria-label="leftMenu">
			<!-- <i class="ion-navicon white"></i>  -->
			<md-icon md-svg-src="<%=request.getContextPath()%>/resources/images/ic_menu_white_18px.svg"></md-icon>
			</md-button>
		</div>
		<div layout="row" flex="60" layout-align="center center" hide-sm>
			<div>
				<h2>
					<!-- <span>CISCO CAPITAL</span> -->
					<img
						src="<%=request.getContextPath()%>/resources/images/ciscologo.png" />
				</h2>
				<span flex></span>
			</div>
		</div>
		<div flex="20">
			<md-button class="md-fab md-mini md-primary" aria-label="signin"
				hide-sm> <a href="#/signin"><i class="fa fa-sign-in"></i></a>
			<md-tooltip>sign in</md-tooltip> </md-button>
			<span> <img
				src="<%=request.getContextPath()%>/resources/images/avatar5.png"
				height="40px" width="40px" class="circle-img"
				style="position: absolute; top: 8px;"></span>

		</div>
	</div>
	</md-toolbar>
	<div layout="column">
		<section layout="row">
			<md-sidenav class="md-sidenav-left md-whiteframe-z2" id="sidenav"
				md-component-id="left" style="width:270px;min-width:250px;">
			<md-toolbar class="md-theme-indigo" layout-padding
				style="background-image:url(<%=request.getContextPath()%>/resources/images/mbg/bg6.png)">
			<!-- <h2 class="md-display-1">CISCO CAPITAL</h2> -->
			<div layout="row" layout-align="center" layout-padding>
				<img
					src="<%=request.getContextPath()%>/resources/images/capitallogo.png"
					width="72px" />
			</div>
			<div layout="row" class="space-around" layout-padding>
				<div flex="30" layout-margin layout-padding>
					<img
						src="<%=request.getContextPath()%>/resources/images/avatar04.png"
					 height="80px" width="80px" class="circle-img"/>
				</div>
				<div flex="70" layout-padding layout-margin id="profileInfo">
					<span class="md-headline">Suman K</span> <span class="md-subhead"
						style="font-size: 14px;">Designation</span>
				</div>
			</div>
<!-- 			<md-content ng-controller="LeftCtrl"> <md-button
				ng-click="close()"
				class="md-primary md-fab md-mini md-raised md-fab-top-right"
				aria-label="close"> <i class="fa fa-close"
				style="color: white;"></i> </md-button> </md-content> --> </md-toolbar>
			<ul>
				<li><a href="#/login"><span class="ion-home"></span><span
						class="sidemenu" layout-padding>Home</span></a></li>
				<li><a href="#/profile"><span class="ion-person"></span><span
						class="sidemenu" layout-padding>Profile</span></a></li>
				<li><a href="#/registration"><span
						class="ion-android-person-add"></span><span class="sidemenu"
						layout-padding>Contact Us</span></a></li>
				<!--  <li><a href="#/list"><span class="fa fa-table"></span><span class="sidemenu" layout-padding>Get List</span></a></li> -->
			</ul>
			</md-sidenav>
		</section>
	</div>
	<!-- End of sidenav -->
	<%@include file="mfb.jsp"%>
</div>
<!-- 
	<div ng-controller="TabCtrl" class="demo" layout-align="end">
		<md-tabs md-border-bottom md-selected="selectedIndex"> <md-tab>
		<a href="#/login" data-ng-class="{ active: isActive('/login')}">Home</a>
		</md-tab> <md-tab> <a href="#/profile"
			data-ng-class="{ active: isActive('/profile')}">About</a> </md-tab> <md-tab>
		<a href="#/registration"
			data-ng-class="{ active: isActive('/registration')}">Contact</a> </md-tab> <md-tab>
		<a href="#/list" data-ng-class="{ active: isActive('/list')}">List</a></md-tab>
		<md-tab> <a href="#/details"
			data-ng-class="{ active: isActive('/details')}">Details</a></md-tab> </md-tabs>
	</div>
 -->