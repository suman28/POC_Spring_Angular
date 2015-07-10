<%response.sendRedirect(request.getContextPath()+"/index"); %>
<%-- <html ng-app="cisco_capital">
<head>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <!--  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.8.3/angular-material.min.css"> -->
    <!-- Head -->
	<!--  <link rel="stylesheet" href="bower_components/lumx/dist/lumx.css">-->
	<!-- <link rel="stylesheet" href="bower_components/mdi/materialdesignicons.css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"> -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/angular-material.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mfb.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/index.css">
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/resources/css/nsPopover.css" rel="stylesheet" type="text/css" />
</head>
<style>
body{
background:#ececec;
}
 md-content {
  background-color: transparent !important; }
   md-content md-tabs {
    border: 1px solid #e1e1e1; }
     md-content md-tabs md-tab-content {
      background: #f6f6f6; }
    
   md-content h1:first-child {
    margin-top: 0; }
 md-input-container {
  padding-bottom: 0; }
 .remove-tab {
  margin-bottom: 40px; }
 .demo-tab > div > div {
  padding: 25px;
  box-sizing: border-box; }
 .edit-form input {
  width: 100%; }
 md-tabs {
  border-bottom: 1px solid rgba(0, 0, 0, 0.12); }
 md-tab[disabled] {
  opacity: 0.5; }
 label {
  text-align: left; }
 .long > input {
  width: 264px; }
 .md-button.add-tab {
  transform: translateY(5px); }
  
  .demo {
 /*  position:relative;   */
  
   background-color: #fff;  
 /*  margin-top:40px; */
 /*  margin-left:0px; */
}

.demo a {
  text-decoration: none !important;
   color:rgba(0,0,0,0.54); 
 /*  height:100%;
  width:100%; */
}

/* .demo a.visited {
  color:white;
} */
.sidemnenu{
	font-size:32px;
} 
#contactUs{
 -webkit-animation-duration: 3s;
  animation-duration: 3s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation-name: fadeIn;
  animation-name: fadeIn;
}
.white{
	color:white;
}

</style>
  <body>
  
    <div ng-controller="AppCtrl" id="testtable">
        <md-toolbar >
          <div class="md-toolbar-tools">
            <div class=" col col-md-2">
              <md-button ng-click="toggleLeft()" class="md-primary md-mini" layout-padding style="border-radius:50%;" aria-label="leftMenu">
                <i class="fa fa-bars white"></i>
              </md-button>
          </div>
          <div class="col col-md-5 col-md-offset-3" style="padding-left:30px;">
             <h2>
              <span>CISCO CAPITAL</span>
            </h2>
            <span flex></span>
          </div>
              <div class="col col-md-2">
               <md-button class="md-fab md-mini md-primary" aria-label="signin">
                <i class="fa fa-sign-in"></i>
                <md-tooltip>sign in</md-tooltip>
              </md-button>
               <!--  <i class="fa fa-user"></i> -->
               <md-button>
               <img src="<%=request.getContextPath()%>/resources/images/avatar5.png" height="40px" width="40px" class="img-circle">
               <span class="md-display-1">Suman</span>
                </md-button>
              </div>
       	 </div>
        </md-toolbar>

<!-- Code for sidenav -->
<div layout="column">
  <section layout="row" flex>
    <md-sidenav class="md-sidenav-left md-whiteframe-z2" id="sidenav" md-component-id="left">
      <md-toolbar class="md-theme-indigo" layout-padding>
        <h2 class="md-display-1">CISCO CAPITAL</h2>
        <div layout="row" flex class="space-around">
	        <div flex="30" layout-padding >
	        <img src="<%=request.getContextPath()%>/resources/images/avatar04.png" 
	        class="img-circle" height="80px" width="80px"/></div>
	        <div flex="70" style="padding-left:20px;">
	        <h3 class="md-headline">Suman K</h3>
	        <h4 class="md-subhead" style="font-size:14px;">Designation</h4></div>
        </div>
         <md-content ng-controller="LeftCtrl">
	        <md-button ng-click="close()" class="md-primary md-fab md-mini md-raised md-fab-top-right" 
	        aria-label="close">
		          <i class="fa fa-close" style="color:white;"></i>
		        </md-button>
	      </md-content> 
        
      </md-toolbar>
      <ul class="nav nav-pills nav-stacked" layout-padding>
        <li><a href="#/login"><span class="fa fa-home fa-2x"></span><span class="sidemenu" style="font-size:16px;" layout-padding>Home</span></a></li>
        <li><a href="#/profile"><span class="fa fa-user fa-2x"></span><span class="sidemenu"  style="font-size:16px;" layout-padding>Profile</span></a></a></li>
        <li><a href="#/registration"><span class="fa fa-table fa-2x"></span><span class="sidemenu"  style="font-size:16px;" layout-padding>Contact Us</span></a></a></li>
      </ul>
      
    </md-sidenav>
 </section>

</div>    <!-- End of sidenav -->
    
</div>
<div ng-controller="DemoController" class="demo">
 <md-tabs md-stretch-tabs md-border-bottom md-selected="selectedIndex" >
     <md-tab>  <a href="#/login" ng-class="{ active: isActive('/login')}">Home</a> </md-tab> 
     <md-tab>  <a href="#/profile"  ng-class="{ active: isActive('/profile')}">Profile</a> </md-tab>
     <md-tab>  <a href="#/registration"  ng-class="{ active: isActive('/registration')}">Registration</a> </md-tab>
  </md-tabs>
</div> 
<!-- ng-view for displaying content -->
<md-content layout-padding>
	<div id="contentWrapper" ng-view></div>
</md-content>
<ul id="menu" class="mfb-component--br mfb-zoomin" data-mfb-toggle="hover">
      <li class="mfb-component__wrap">
        <a href="" class="mfb-component__button--main">
          <i class="mfb-component__main-icon--resting ion-plus-round"></i>
          <i class="mfb-component__main-icon--active ion-close-round"></i>
        </a>
        <ul class="mfb-component__list">
          <li>
            <a href="https://github.com/nobitagit/material-floating-button/" data-mfb-label="View on Github" class="mfb-component__button--child">
              <i class="mfb-component__child-icon ion-social-github"></i>
            </a>
          </li>
          <li>
            <a  style="background-color:#3c80f6;" href="https://github.com/nobitagit" data-mfb-label="Follow me on Github" class="mfb-component__button--child">
              <i class="mfb-component__child-icon ion-social-octocat"></i>
            </a>
          </li>

          <li>
            <a href="http://twitter.com/share?text=Check this material floating button component!&url=http://nobitagit.github.io/material-floating-button/&hashtags=material,design,button,css"
               data-mfb-label="Share on Twitter" class="mfb-component__button--child">
              <i class="mfb-component__child-icon ion-social-twitter"></i>
            </a>
          </li>
        </ul>
      </li>
    </ul>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <!-- <script src="js/velocity.min.js"></script>
  <script src="js/moment.min.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/angular.min.js"></script>
<!--  <script src="js/lumx.js"></script> -->
 <script src="<%=request.getContextPath()%>/resources/js/angular-aria.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/mfb-directive.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/angular-animate.js"></script>
  <!-- <script src="js/fsm-sticky-header.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/angular-material.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/angular-route.js"></script>
  <!-- <script src="js/nsPopover.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/app.js"></script>
	
  </body>
</html>
 --%>
 
 