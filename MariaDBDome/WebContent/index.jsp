<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>首页数据 </title>
		<link rel="stylesheet" href="css/index.css" />
		<script type="text/javascript" src="js/jquery-1.4.1.js"></script>
		<script type="text/javascript" src="js/isCheck.js"></script>
		<script type="text/javascript">
			function isdelete(){
				var rs = checkChb();
				if(rs.length!=0){
					if(window.confirm("是否删除？")){
						window.location.href="user/deleteUser.do?userIds="+rs;
						//alert(rs);
					}
				}else{
					alert("情选择你要删除的数据");
					
				}
			}
			function isdeleteId(id){
			
				if(window.confirm("是否删除？")){
					window.location.href="user/deleteUser.do?userIds="+id;
					//alert(id);
				}
			
			}
		</script>
	</head>
	<body>
		<div class="contior">
			<div class="top">
				<span>全部数据</span>
			</div>
			<div class="search">
				<input type="text" name="userName"/> 
				<div class="ch_button">
					查询
				</div>
			</div>
			<div class="mian">
				<div class="n_top">
					<ul>
						<li>
							<a href="add.jsp">
								<img src="img/plus_alt.png">
								<span>添加</span>
							</a>		
						</li>
						<li>
							<a href="javascript:void()">
								<img src="img/minus_alt.png">
								<span>编辑</span>
							</a>		
						</li>
						<li>
							<a href="javascript:void()">
								<img src="img/x.png">
								<span onclick="isdelete()">删除</span>
							</a>		
						</li>
						<li class="top_reight">
							<a href="javascript:void()">
								<span>全部终端>>></span>
							</a>		
						</li>
					</ul>
				</div>
			
				<div class="n_table">
					<table cellspacing="0" border="1" cellpadding="0" bordercolor="#009900" >
						<tr class="table_one">
							<th><input type="checkbox"  onclick="checkAll(this)" value="" name="userId" ></th>
							<th>序号</th>
							<th>姓名</th>
							<th>年龄</th>
							<th>性别</th>
							<th>操作</th>
						</tr>
						<tr>
							<c:if test="${userList==null}" >
								<h2 style="text-align:center;">没有数据</h2>
							</c:if>
						</tr>
						<c:forEach items="${userList}" var="user">
							<tr class="tabel_text">
								<th width="80px" class="tablerow1 hovered"><input type="checkbox" name="userId" value="${user.userId }"></th>
								<th width="80px">${user.userId }</th>
								<th width="200px">${user.userName }</th>
								<th width="100px">${user.userAge}</th>
								<th width="100px">${user.userSex }</th>
								<th width="230px">
									<a href="user/queryId.do?userId=${user.userId}">
										修改
									</a> &nbsp;&nbsp;
									<a href="javascript:void()">
										<span onclick="isdeleteId(${user.userId})">删除</span>
									</a> 
								</th>
							</tr>
						</c:forEach>			
					</table>
				</div>
				
			</div>
		</div>
	</body>
</html>