package com.aman.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aman.daoimpl.GetOtp;
import com.aman.daoimpl.MailSender;
import com.aman.daoimpl.UserInfoDaoImpl;
import com.aman.pojo.UserInfo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {
	
	int ot=0;
	
	@Autowired
	private UserInfoDaoImpl daoimpl;
	
	@Autowired
    @Qualifier("otpMailService")
    private MailSender msend;

	@Autowired
	private GetOtp otp;

	@GetMapping("/")
	public String indexpage() {
		return "index";
	}
	
	@GetMapping("/index")
	public String indxpage() {
		return "index";
	}
	
	@GetMapping("/index1")
	public String homepage() {
		return "home";
	}
	
	@GetMapping("/login")
	public String loginpage() {
		return "login";
	}
	
	@GetMapping("/register")
	public String regpage() {
		return "register";
	}
	
	@GetMapping("/courses")
	public String coursespage() {
		return "courses";
	}
	
	@GetMapping("/about")
	public String aboutpage() {
		return "about";
	}
	
	@GetMapping("/blog")
	public String blogpage() {
		return "blog";
	}
	
	@GetMapping("/blog_details")
	public String blog_detailspage() {
		return "blog_details";
	}
	
	@GetMapping("/elements")
	public String elementspage() {
		return "elements";
	}
	
	@GetMapping("/contact")
	public String contactpage() {
		return "contact";
	}
	
	@PostMapping("/saveuser")
	public String addNewUser(@RequestParam("username")String username , @RequestParam("email")String email,
			@RequestParam("password")String password,@RequestParam("dp")MultipartFile file,Model m)throws Exception {
		
		UserInfo u = new UserInfo();
		String fullname = username;
		String firstName = fullname.split(" ")[0];
		u.setUsername(firstName+"@123");
		u.setRole("user");
		u.setEmail(email);
		u.setPassword(password);
		u.setDp(file.getOriginalFilename());
		String serverpath = "D:\\programming\\Spring boot\\Spring-Boot-JPA-learnify-App\\src\\main\\webapp\\resources\\dp\\";
		File sf = new File(serverpath+file.getOriginalFilename());
		file.transferTo(sf);
		if (daoimpl.addNewUser(u)) {
//			ot = otp.getOTP();
//			System.out.println("Otp is = "+ot);
			msend.sendMail(u.getEmail(),u.getUsername(),u.getPassword());
			m.addAttribute("msg", "Registered successfully. You can login now.");
			m.addAttribute("msgType", "success");
			return "login";
		}
		else {
			m.addAttribute("msg","User Could Not Be  Register  , Already Exist");
			return "register";
		}
	}
	
	@PostMapping("/checkuser")
	public ModelAndView checkuser(@RequestParam("username")String username, @RequestParam("password")String password,
			HttpServletRequest request)
	{
	
		UserInfo u = new UserInfo();
		u.setUsername(username);
		u.setPassword(password);
		ModelAndView mv= null;
		UserInfo user = daoimpl.checkUserCredential(u);
		if(user!=null) {
			HttpSession session = request.getSession(false);
			if(session!=null) {
				session.invalidate();
			}
			session = request.getSession(true);
			System.out.println(session.getId());
			session.setAttribute("loginuser", user);
			session.setAttribute("username", user.getUsername());
			session.setAttribute("dp", user.getDp());
			session.setAttribute("userId", user.getUserid());
			session.setAttribute("pythonAccess", user.isPythonAccess());
			session.setAttribute("htmlAccess", user.isHtmlcssAccess());
			if(user.getRole().equals("ADMIN")) {
				mv = new ModelAndView("home","msgg","Welcome To Learnify ");
			}else {
				mv = new ModelAndView("userhome","msgg","Welcome To Learnify ");
			}
			
		}
		else {
			mv = new ModelAndView("login");
			mv.addObject("msg", "Invalid Username & Password");
			mv.addObject("msgType", "error");
		}
		return mv;
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		return "index";
	}
}
