<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误页面</title>

 <style type="text/css">
 	.main{
 		width: 100%;
 		height: 100%;
 		margin: 20px auto;
 		text-align: center;
 	}
 	#spanNumber{
 		color: red;
 		font-size:20px;
 	}
 </style>
</head>
<body>
	<div class="main">
		<img src="img/404.png">
	</div>
</body>
</html>