<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	int id = (int)session.getAttribute("id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>任务管理系统-HCI</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">任务管理系统 v1.0</a>
		</div>
		<!-- /.navbar-header --> <!-- /.navbar-top-links -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
						<% String userName = (String)session.getAttribute("user"); if(userName.equals("admin")){ %>
							
						<form action="listUser.action">	
							<input name="name" type="text" style="width:180px;" class="form-control" placeholder="查询用户...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button> </span>
						</form>
								
						<%} %>
						</div> <!-- /input-group -->
					</li>
					<li><a href="<%=basePath%>list.action"
						class="active"><i class="fa fa-edit fa-fw"></i> 任务列表</a></li>
						<li><a data-toggle="modal" data-target="#customerEditDialog" onclick="editUser(${id})" style="cursor:pointer"><i class="fa fa-dashboard fa-fw"></i> 个人信息</a>
						</li>
						<li><a href="<%=basePath%>aceptedTask.action"><i class="fa fa-dashboard fa-fw"></i> 已接受任务</a>
						</li>
					
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">任务管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			
			<%@include file="aceptedTaskList.jsp" %>
			
			<!-- 编辑用户个人信息页面 -->
			<%@include file="editUser.jsp"%>
			
			
			
		</div>
	</div>


	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	<script type="text/javascript">
	
		//弹出添加客户窗口
		function addTask(){
			$("#taskList").hide();
			$("#addTask").show();
		}
		
		function backSubmit(){
			$("#addTask").hide();
			$("#taskList").show();
		}
		
		function backSubmit2() {
			$("#editTask").hide();
			$("#taskList").show();
		}
		
		
		
		
		
		function editUser(id) {
			$.ajax({
				type:"post",
				url:"<%=basePath%>editUser.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_name").val(data.name);
					$("#edit_grade").val(data.grade);
					$("#edit_college").val(data.college);
					$("#edit_subject").val(data.subject);
					$("#edit_num").val(data.num);
					$("#edit_email").val(data.email);
					
				}
			});
		}
		
		function updateUser() {
			$.post(
				"<%=basePath%>update.action",
				$("#edit_user_form").serialize(),
				function(data){
					alert("个人信息更新成功！");
					window.location.reload();
			});
		}
		
		function cancelTask(id) {
			if(confirm('确定要注销该任务吗？')) {
				$.ajax({
					type:"post",
					url:"<%=basePath%>cancelTask.action",
					data:{"id":id},
					success:function(data) {
					}
				});
				alert('已成功注销任务');
				window.location.reload();
			}
		}
		
	</script>
</body>
</html>
