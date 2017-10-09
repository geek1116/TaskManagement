package com.hci.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hci.bean.User;
import com.hci.service.UserService;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegisterController {
	
	
	@Autowired
	private UserService userService;
	
	
	// 图片高度
    private static final int IMG_HEIGHT = 100;
    // 图片宽度
    private static final int IMG_WIDTH = 30;
    // 验证码长度
    private static final int CODE_LEN = 4;
    
    @RequestMapping(value = "/getCode.action")
    public void getCode(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 用于绘制图片，设置图片的长宽和图片类型（RGB)
        BufferedImage bi = new BufferedImage(IMG_HEIGHT, IMG_WIDTH, BufferedImage.TYPE_INT_RGB);
        // 获取绘图工具
        Graphics graphics = bi.getGraphics();
        graphics.setColor(new Color(100, 230, 200)); // 使用RGB设置背景颜色
        graphics.fillRect(0, 0, 100, 30); // 填充矩形区域

        // 验证码中所使用到的字符
        char[] codeChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456".toCharArray();
        String captcha = ""; // 存放生成的验证码
        Random random = new Random();
        for(int i = 0; i < CODE_LEN; i++) { // 循环将每个验证码字符绘制到图片上
            int index = random.nextInt(codeChar.length);
            // 随机生成验证码颜色
            graphics.setColor(new Color(random.nextInt(150), random.nextInt(200), random.nextInt(255)));
            // 将一个字符绘制到图片上，并制定位置（设置x,y坐标）
            graphics.drawString(codeChar[index] + "", (i * 20) + 15, 20);
            captcha += codeChar[index];
        }
        // 将生成的验证码code放入sessoin中
        req.getSession().setAttribute("code", captcha);
        // 通过ImageIO将图片输出
        ImageIO.write(bi, "JPG", resp.getOutputStream());
        
    }
    
    
    @RequestMapping(value = "/register.action")
    public void register(User user, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	int count = userService.findUserExist(user.getName());
    	
    	if( count == 0 ) {
    		userService.addUser(user);
    	}
        
    }
    
    @RequestMapping(value = "/testCode.action")
    public void testCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	
    	resp.setContentType("text/plain;charset=utf-8");
    	PrintWriter out = resp.getWriter();
    	
    	String code = (String) req.getSession().getAttribute("code");
    	
    	String inputCode = req.getParameter("code");
    	
    	//
    	
    	if(code.toLowerCase().equals(inputCode.toLowerCase())) { // 验证码不区分大小写
    		out.print("code_pass");
    		
        } else { 
        	out.print("code_error");
        }
    }
    
    
    @RequestMapping(value = "/testName.action")
    public void testName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	
    	resp.setContentType("text/plain;charset=utf-8");
    	PrintWriter out = resp.getWriter();
    	
    	String name = req.getParameter("name");
    	
    	//
    	if(userService.findUserExist(name) >0 ) {
    		out.print("error");
    	} else {
    		out.print("successs");
    	}
    }
    
	
}
