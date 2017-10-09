package com.hci.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hci.bean.QueryVo;
import com.hci.bean.Task;
import com.hci.mapper.TaskMapper;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskMapper taskMapper;
	
	@Override
	public List<Task> findTaskByVo(QueryVo vo) {
		//设置查询起始记录条数
		vo.setStart((vo.getPage() - 1) * vo.getSize());
		return taskMapper.findTaskByVo(vo);
	}

	@Override
	public Integer findTaskByCount() {
		return taskMapper.findTaskByCount();
	}

	@Override
	public void deleteTaskById(int id) {
		taskMapper.deleteTaskById(id);
	}

	@Override
	public void addTask(Task task) {
		taskMapper.addTask(task);
	}
	
	@Override
	public Task findTaskById(int id) {
		return taskMapper.findTaskById(id);
	}
	
	@Override
	public void updateTaskById(Task task){
		taskMapper.updateTaskById(task);
	}

}
