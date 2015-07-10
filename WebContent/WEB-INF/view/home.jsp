<html data-ng-app="cisco_capital">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"> --%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/angular-material.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/mfb.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/index.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/ionicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/styles.css">
</head>

<body
	style="background-image:url(<%=request.getContextPath()%>/resources/images/mbg/bg2.png)">

	
	<%@include file="header.jsp"%>
	

	<div ng-controller="TabCtrl" class="demo" layout-align="end">
		<md-tabs md-border-bottom md-selected="selectedIndex"> <md-tab>
		<a href="#/login" data-ng-class="{ active: isActive('/login')}">Home</a>
		</md-tab> <md-tab> <a href="#/profile"
			data-ng-class="{ active: isActive('/profile')}">About</a> </md-tab> <md-tab>
		<a href="#/registration"
			data-ng-class="{ active: isActive('/registration')}">Contact</a> </md-tab> <md-tab>
		<a href="#/list" data-ng-class="{ active: isActive('/list')}">List</a></md-tab>
		<!-- <md-tab> <a href="#/details"
			data-ng-class="{ active: isActive('/details')}">Details</a></md-tab> </md-tabs> -->
	</div>

	<!-- <div ng-controller="TabCtrl">
<md-tabs md-stretch-tabs md-selected="0">
    <md-tab ng-repeat="tab in tabs" md-on-select="switchTab($index)" label="{{tab}}">
    
     </md-tab>
</md-tabs>
</div> -->

	<!-- ng-view for displaying content -->

	<div id="contentWrapper" ng-view></div>
	
	


	<%-- <%@include file="mfb.jsp"%> --%>


	<script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<!-- <script src="js/velocity.min.js"></script>-->
	<script src="<%=request.getContextPath()%>/resources/js/angular.min.js"></script>
	<!--  <script src="js/lumx.js"></script> -->
	<script
		src="<%=request.getContextPath()%>/resources/js/angular-aria.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/mfb-directive.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/angular-animate.js"></script>
	<!-- <script src="js/fsm-sticky-header.js"></script> -->
	<script
		src="<%=request.getContextPath()%>/resources/js/angular-material.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/angular-route.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/angular-scroll.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/fsm-sticky-header.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/controllers.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/app.js"></script>
</body>
</html>
