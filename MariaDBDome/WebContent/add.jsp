<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/show.css" />
	</head>
	<body>
		<div class="centos">
			<form action="user/insertUser.do" method="post">
				<table class="table" border="1px" cellpadding="0px" cellspacing="0px" bordercolor="#d2d1d1">
					<tr>
						<th width="109px">姓名</th>
						<th class="table_text"><input  type="text" name="userName"></th>
					</tr>
					<tr>
						<th width="109px">年龄</th>
						<th class="table_text"><input type="tel" name="userAge"></th>
					</tr>
					<tr>
						<th width="109px">性别</th>
						<th class="table_radio">
							男<input type="radio" name="userSex" value="男" />   &nbsp;
							女<input type="radio" name="userSex" value="女" />
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
