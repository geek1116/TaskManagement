<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 所有客户列表 -->
<div class="row" id="userList">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">用户信息列表</div>
			<!-- /.panel-heading -->
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>用户名称</th>
						<th>学院</th>
						<th>专业</th>
						<th>学号</th>
						<th>年级班级</th>
						<th>邮箱</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.rows}" var="row">
						<tr>
							<td>${row.id}</td>
							<td>${row.name}</td>
							<td>${row.college}</td>
							<td>${row.subject}</td>
							<td>${row.num}</td>
							<td>${row.grade}</td>
							<td>${row.email}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="col-md-12 text-right">
				<!-- 分页标签 -->
				<ul class="pagination ul-group from-horizontal">
				    <li><a href="${pageContext.request.contextPath}/listUser.action?page=1">首页</a></li>
				    <li><a href="${pageContext.request.contextPath}/listUser.action?page=${page.currentPage-1 <= 0 ? 1:page.currentPage - 1}">上一页</a></li>
					<li><span>${ page.currentPage } / ${page.pageCount<=0?1:page.pageCount}</span></li>
				    <li><a href="${pageContext.request.contextPath}/listUser.action?page=${page.currentPage+1 > page.pageCount ? page.currentPage : page.currentPage+1}">下一页</a></li>
				    <li><a href="${pageContext.request.contextPath}/listUser.action?page=${page.pageCount<=0?1:page.pageCount}">尾页</a></li>
				</ul>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>