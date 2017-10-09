<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 客户编辑对话框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改个人信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_user_form">
					<input type="hidden" id="edit_cust_id" name="cust_id" />
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_name"
								placeholder="用户名" name="name">
						</div>
					</div>
					
					
					
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">学院</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_college"
								placeholder="学院" name="college">
						</div>
					</div>
					<div class="form-group">
						<label for="edit_phone" class="col-sm-2 control-label">专业</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_subject"
								placeholder="专业" name="subject">
						</div>
					</div>
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">学号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_num"
								placeholder="学号" name="num">
						</div>
					</div>
					<div class="form-group">
						<label for="edit_zipcode" class="col-sm-2 control-label">年级班级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_grade"
								placeholder="年级班级" name="grade">
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_email"
								placeholder="邮箱" name="email">
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary"
					onclick="updateUser()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- /#wrapper -->