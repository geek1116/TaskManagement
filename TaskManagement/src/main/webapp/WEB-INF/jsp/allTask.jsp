<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 所有客户列表 -->
<div class="row" id="customerList">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">任务列表</div>
			<!-- /.panel-heading -->
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>任务名称</th>
						<th>起始时间</th>
						<th>截止时间</th>
						<th>内容</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.rows}" var="row">
						<tr>
							<td>${row.id}</td>
							<td>${row.name}</td>
							<td>${row.startTime}</td>
							<td>${row.endTime}</td>
							<td>${row.content}</td>
							
							<td><a href="#" class="btn btn-primary btn-xs"
								onclick="asceptTask(${row.id})">接受任务</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="col-md-12 text-right">
				<!-- 分页标签 -->
				<ul class="pagination ul-group from-horizontal">
				    <li><a href="${pageContext.request.contextPath}/list.action?page=1">首页</a></li>
				    <li><a href="${pageContext.request.contextPath}/list.action?page=${page.currentPage-1 <= 0 ? 1:page.currentPage - 1}">上一页</a></li>
					<li><span>${ page.currentPage } / ${page.pageCount<=0?1:page.pageCount}</span></li>
				    <li><a href="${pageContext.request.contextPath}/list.action?page=${page.currentPage+1 > page.pageCount ? page.currentPage : page.currentPage+1}">下一页</a></li>
				    <li><a href="${pageContext.request.contextPath}/list.action?page=${page.pageCount<=0?1:page.pageCount}">尾页</a></li>
				</ul>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>