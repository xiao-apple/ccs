package com.yc.ccs.web.handler;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private JavaMailSender mailSender;
	@RequestMapping("/forget")
	public String forget(String email,String username,HttpServletRequest request){
		LogManager.getLogger().debug("请求UserHandler进行forget操作...");
		LogManager.getLogger().debug("username="+username+" email="+email);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom("mssora@163.com");
			helper.setTo(email);
			helper.setSubject("找回密码");
			String hrefString = request.getScheme()+"://"+request.getServerName()+":"+request.getLocalPort()+request.getServletContext().getContextPath()+"/user/getpassword?username="+username;
			System.out.println(hrefString);
			helper.setText("<a href='"+hrefString+"'>点此重置密码</a>如果链接不可用,拷贝"+hrefString+" 到地址栏", true);;
			mailSender.send(message);
		} catch (Exception e) {
			LogManager.getLogger().error("发送邮件失败",e);
		}
		
		return "redirect:/page/forgetSuccess.jsp";
	}
	
	@RequestMapping("/getpassword")
	public String getpassword(){
		Random random = new Random();
		String randPasswordString = random.nextInt(900000)+100000+"";
		return "redirect:/page/getpassword";
	}
}
