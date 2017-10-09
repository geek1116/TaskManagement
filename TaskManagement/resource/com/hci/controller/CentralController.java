package com.hci.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;





import com.hci.bean.Page;
import com.hci.bean.QueryVo;
import com.hci.bean.Rel;
import com.hci.bean.Task;
import com.hci.bean.User;
import com.hci.service.RelService;
import com.hci.service.TaskService;
import com.hci.service.UserService;

@Controller
public class CentralController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private RelService relService;
	
	@RequestMapping("/login.action")
	public void login(User user, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cnt = userService.findUser(user);
		if(cnt >0 ) {
			
			req.getSession().setAttribute("user", user.getName());
			req.getSession().setAttribute("id", userService.findUserId(user.getName()));
			req.getRequestDispatcher("/list.action").forward(req, resp);
			
		} else {
			req.getRequestDispatcher("/index.html").forward(req, resp);
		}
	}
	
	@RequestMapping("/list.action")
	public String list(QueryVo vo,Model model) throws Exception {
		
		
		//查询数据列表和数据总数
		List<Task> resultList = taskService.findTaskByVo(vo);
		Integer count = taskService.findTaskByCount();

		//分页对象
		Page<Task> page = new Page<Task>();
		page.setTotal(count);				//数据总数
		page.setSize(vo.getSize());			//每页显示个数
		page.setCurrentPage(vo.getPage());	//当前页数
		page.setRows(resultList);			//列表数据
		//计算总页数
    	int pageCount = page.getTotal() / page.getSize();
    	if (page.getTotal() % page.getSize() > 0) {
    		pageCount++;
    	}
    	page.setPageCount(pageCount);//总页数
		
		//分页查询数据
		model.addAttribute("page",page);
		
		
		return "home";
	}
	
	@RequestMapping("/taskDetail")
	@ResponseBody
	public Task detail(int id) throws Exception{
		Task task = taskService.findTaskById(id);
		return task;
	}
	
	@RequestMapping("/aceptTask.action")
	public void aceptTask(Rel rel, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int uid = (int)req.getSession().getAttribute("id");
		rel.setUid(uid);
		
		int count = relService.findCountByUidAndTid(rel);
		
		resp.setContentType("text/plain;charset=utf-8");
    	PrintWriter out = resp.getWriter();
		if(count > 0) {
			out.print("repeat_acept_task");
		} else {
			relService.asceptTask(rel);
			out.print("success");
		}
	}
	
	@RequestMapping("/update.action")
	public void updata(User user, HttpServletRequest req, HttpServletResponse resp) {
		int id = (int)req.getSession().getAttribute("id");
		user.setId(id);
		userService.updateUserById(user);
	}
	
	@RequestMapping("/editUser.action")
	@ResponseBody
	public User editUser(int id) throws Exception {
		
		User u = userService.findUserById(id);
		return u;
	}
	
	@RequestMapping("/addTask.action")
	public void addTask(Task task) {
		taskService.addTask(task);
	}
	
	@RequestMapping("/editTask.action")
	@ResponseBody
	public Task editTask(int id, HttpServletRequest req, HttpServletResponse resp) {
		
		req.getSession().setAttribute("tid", id);
		return taskService.findTaskById(id);
	}
	
	@RequestMapping("/updateTask.action")
	public void updataTask(Task task, HttpServletRequest req, HttpServletResponse resp) {
		int tid = (int)req.getSession().getAttribute("tid");
		task.setId(tid);
		taskService.updateTaskById(task);
	}
	
	@RequestMapping("/delete.action")
	public void deleteTask(int id) {
		taskService.deleteTaskById(id);
		
		relService.deleteById(id);
		
	}
	
	
	
	@RequestMapping("/listUser.action")
	public String listUser(QueryVo vo,Model model) throws Exception {
		
		
		//查询数据列表和数据总数
		List<User> resultList = userService.findUserByVo(vo);
		Integer count = userService.findUserByCountAndVo(vo);

		//分页对象
		Page<User> page = new Page<User>();
		page.setTotal(count);				//数据总数
		page.setSize(vo.getSize());			//每页显示个数
		page.setCurrentPage(vo.getPage());	//当前页数
		page.setRows(resultList);			//列表数据
		//计算总页数
    	int pageCount = page.getTotal() / page.getSize();
    	if (page.getTotal() % page.getSize() > 0) {
    		pageCount++;
    	}
    	page.setPageCount(pageCount);//总页数
		
		//分页查询数据
		model.addAttribute("page",page);
		
		
		return "showUser";
	}
	
	
	@RequestMapping("/aceptedTask.action")
	public String aceptedTask(QueryVo vo,Model model, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int uid = (int)req.getSession().getAttribute("id");
		vo.setUid(uid);
		List<Integer> tid = relService.getTidByUid(vo);
		
		int count = relService.getCountByUid(uid);
		
		List<Task> resultList = new ArrayList();
		
		for(int i=0; i<tid.size(); i++) {
			resultList.add( taskService.findTaskById(tid.get(i)) );
		}

		//分页对象
		Page<Task> page = new Page<Task>();
		page.setTotal(count);				//数据总数
		page.setSize(vo.getSize());			//每页显示个数
		page.setCurrentPage(vo.getPage());	//当前页数
		page.setRows(resultList);			//列表数据
		//计算总页数
    	int pageCount = page.getTotal() / page.getSize();
    	if (page.getTotal() % page.getSize() > 0) {
    		pageCount++;
    	}
    	page.setPageCount(pageCount);//总页数
		
		//分页查询数据
		model.addAttribute("page",page);
		
		
		return "showAceptedTask";
	}
	
	@RequestMapping("/cancelTask.action")
	public void cancelTask(int id) {
		relService.deleteById(id);
	}
	
}
