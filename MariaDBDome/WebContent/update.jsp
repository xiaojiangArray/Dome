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
<title>Insert title here</title>
	<link rel="stylesheet" href="css/show.css" />
	</head>
	<body>
		<div class="centos">
			<form action="user/updateUser.do" method="post">
				<input type="hidden" value="${user.userId}" name="userId">
				<table class="table" border="1px" cellpadding="0px" cellspacing="0px" bordercolor="#d2d1d1">
					<tr>
						<th width="109px">姓名</th>
						<th class="table_text"><input  type="text" name="userName" value="${user.userName}"></th>
					</tr>
					<tr>
						<th width="109px">年龄</th>
						<th class="table_text"><input type="tel" name="userAge" value="${user.userAge }"></th>
					</tr>
					<tr>
						<th width="109px">性别</th>
						<th class="table_radio">
							男<input type="radio" name="userSex" value="男" ${user.userSex eq '男'?  "checked='checked'":''} />   &nbsp;
							女<input type="radio" name="userSex" value="女" ${user.userSex eq '女'?  "checked='checked'":''} />
						</th>
					</tr>
					<tr>
						<th colspan="2" >
							<input class="table_submit" type="submit" value="提          交" />
						</th>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
