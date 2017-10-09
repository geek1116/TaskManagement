package com.hci.mapper;

import java.util.List;

import com.hci.bean.QueryVo;
import com.hci.bean.Task;

public interface TaskMapper {
	
	public List<Task> findTaskByVo(QueryVo vo);
	
	public Task findTaskById(int id);
	
	public Integer findTaskByCount();
	
	public void deleteTaskById(int id);

	public void addTask(Task task);
	
	public void updateTaskById(Task task);
	
}
