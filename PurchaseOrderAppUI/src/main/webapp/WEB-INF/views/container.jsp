<%@page import="org.apache.catalina.Session"%>
<%@page import="com.fuze.po.PurchaseOrderAppUI.auth.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1>Container</h1>
	
	<%@ include file="footer.jsp"%>


	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/kendo.all.min.js"></script>
	<script src="static/js/config.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var baseUrl = appConfig.reservation_application;
			var user = ${currentUserInfo};
			loadMyContainer();
			
			function loadMyContainer() {
				
				$.ajax({
		            type: "POST",
		            data: JSON.stringify(user),
		            contentType: "application/json; charset=utf-8",
		            cache: false,
		            url: baseUrl + '/reservation/container/list',
		            success: function(data){
		            	console.log(data);
		            },
		            error: function(jqXHR, textStatus, errorThrown){
		                console.log(errorThrown);  
		            }
	        	});
			}
		})
	</script>
</body>
</html>