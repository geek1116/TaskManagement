<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 添加客户列表 -->
<div class="row" id="editTask" style="display: none">
	<div class="col-lg-12">
		<form id="edit_task_form" class="form-horizontal" style="width: 600px; margin: 0 auto;" method="post">
			<div class="form-group">
				<label for="edit_customerName" class="col-sm-2 control-label">任务名称</label>
				<div class="col-sm-10">
					<input id="edit_name" type="text" class="form-control" placeholder="任务名称"
						name="name">
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="edit_mobile" class="col-sm-2 control-label">起始时间</label>
				<div class="col-sm-10">
					<input id="edit_startTime" type="text" class="form-control" placeholder="起始时间"
						name="startTime">
				</div>
			</div>
			<div class="form-group">
				<label for="edit_zipcode" class="col-sm-2 control-label">截止时间</label>
				<div class="col-sm-10">
					<input id="edit_endTime" type="text" class="form-control" placeholder="截止时间"
						name="endTime">
				</div>
			</div>
			<div class="form-group">
				<label for="edit_address" class="col-sm-2 control-label">任务内容</label>
				<div class="col-sm-10">
					<textarea id="edit_content"  class="form-control" placeholder="任务内容"
						name="content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<button class="btn btn-default" onclick="updateTask()">更新</button>
				<button class="btn btn-default" onclick="backSubmit2()">返回</button>
			</div>
		</form>
	</div>
</div>
<!-- /#page-wrapper -->
