package com.hci.service;

import com.hci.bean.Task;
import com.hci.bean.User;

public class Test {

	
	public static void main(String[] args) {
		for(int i=1; i<=32; i++) {
			User user = new User();
			user.setName("user" + i);
			user.setPassword(user.getName());
			user.setCollege( (i%3==0)?"数信学院":"软件学院" );
			user.setNum("2015270106" + i);
			user.setGrade("2015级XXXX");
			user.setSubject("计算机");
			user.setEmail("1035" + i + "456" + (i%2+3) + "@qq.com");
			
			System.out.println("insert into user (name,password,college,subject,num,grade,email) values('"
					+ user.getName() + "','" + user.getPassword() + "','" + user.getCollege() + "','" + user.getSubject()
					+ "','" + user.getNum() + "','" + user.getGrade() + "','" + user.getEmail() + "');");
			
		}
	}

}
