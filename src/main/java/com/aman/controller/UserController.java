package com.aman.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aman.daoimpl.QuestionsDaoImpl;
import com.aman.daoimpl.QuizDaoImpl;
import com.aman.daoimpl.ResultDaoImpl;
import com.aman.daoimpl.UserInfoDaoImpl;
import com.aman.pojo.Questions;
import com.aman.pojo.Quiz;
import com.aman.pojo.Result;
import com.aman.pojo.UserInfo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private QuestionsDaoImpl daoimpl;
	
	@Autowired
	private UserInfoDaoImpl userdaoimpl;
	
	@Autowired
	private ResultDaoImpl resultdaoimpl;
	

	@Autowired
	private QuizDaoImpl quizdaoimpl;

	@GetMapping("/userhome")
	public String userhome() {
		return "userhome";
	}
	@PostMapping("/subjectquiz")
	public ModelAndView subjectquiz(HttpServletRequest request,@RequestParam("subject")String subject) {
		
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		boolean hasAccess = false;
		if ("Python".equals(subject)) {
		    hasAccess = user.isPythonAccess();
		} else if ("HTML/CSS".equals(subject)) {
		    hasAccess = user.isHtmlcssAccess();
		}
		if(hasAccess) {
			List<Quiz> lst1 =  quizdaoimpl.getQuizBySubject(subject);
		    mv = new ModelAndView("userquiz");
		    mv.addObject("lst1",lst1);// for showing question
			session.setAttribute("lst1", lst1);
		}
		else {
			mv = new ModelAndView("userhome");
			mv.addObject("buy", "Please purchase the "+subject+" course to access the quiz.");
		}
		return mv;
		
	}
	
	@GetMapping("/usercontact")
	public String usercontact() {
		return "usercontact";
	}
	
	@GetMapping("/userquiz")
	public ModelAndView userquiz(HttpServletRequest request){
		List<Quiz> lst1 =  quizdaoimpl.getQuizBySubject("Java");
	    ModelAndView mv = new ModelAndView("userquiz");
	    mv.addObject("lst1",lst1);// for showing question
		HttpSession session = request.getSession(false);
		session.setAttribute("lst1", lst1);
		return mv;
	}
	@GetMapping("/userjava")
	public ModelAndView java(HttpServletRequest request) {
		List<Questions> lst = daoimpl.getQuestionBySubject("Java");
	    ModelAndView mv = new ModelAndView("userjava");
	    mv.addObject("lst", lst);          // for showing questions
		HttpSession session = request.getSession(false);
		session.setAttribute("lst", lst);
		return mv;
	}
	
	@GetMapping("/userpython")
	public ModelAndView python(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		userdaoimpl.updatePythonAccess(userid);
		UserInfo updateuser = userdaoimpl.getUserByUserId(userid);
		session.setAttribute("user", updateuser);
		List<Questions> lst = daoimpl.getQuestionBySubject("Python");
	    ModelAndView mv = new ModelAndView("userpython");
	    mv.addObject("lst", lst);          // for showing question
		session.setAttribute("lst", lst);
		return mv;
	}
	
	
	@GetMapping("/userhtmlcss")
	public ModelAndView htmlcss(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		userdaoimpl.updateHtmlCssAccess(userid);
		UserInfo updateuser = userdaoimpl.getUserByUserId(userid);
		session.setAttribute("pythonAccess", updateuser.isPythonAccess());
		session.setAttribute("htmlAccess", updateuser.isHtmlcssAccess());
		session.setAttribute("user", updateuser);
		List<Questions> lst = daoimpl.getQuestionBySubject("HTML/CSS");
	    ModelAndView mv = new ModelAndView("userhtmlcss");
	    mv.addObject("lst", lst); // for showing question
		session.setAttribute("lst", lst);
		return mv;
	}
	
	@GetMapping("/javaquiz")
	public ModelAndView javaquiz(HttpServletRequest request) {
		List<Quiz> lst1 =  quizdaoimpl.getQuizBySubject("Java");
	    ModelAndView mv = new ModelAndView("javaquiz");
	    mv.addObject("lst1",lst1);// for showing question
		HttpSession session = request.getSession(false);
		session.setAttribute("lst1", lst1);
		return mv;
	}
	
	@PostMapping("/submitJavaQuiz")
	public String submitJavaQuiz(HttpServletRequest request,Model m) {
		

		List<Quiz> lst1 = quizdaoimpl.getQuizBySubject("Java");
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		
		int score = 0;
		for(Quiz q : lst1) {	
			String userAnswer = request.getParameter("q_"+q.getId());
			if (userAnswer != null &&
		            userAnswer.equalsIgnoreCase(q.getCorrect())) {
		            score++;
		        }
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("Java");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score",score);
		m.addAttribute("total", lst1.size());
		List<Result> lst = resultdaoimpl.getResultByUserId(userid);
		session.setAttribute("lst", lst);
		m.addAttribute("Subject", "Java");
		double percentage = (score * 100.0) / lst1.size();
		m.addAttribute("percentage", percentage);
		String status = (percentage >= 40) ? "PASS" : "FAIL";
		m.addAttribute("status", status);
		return "userResult";
	}
	
	
	@GetMapping("/pythonquiz")
	public ModelAndView pythonquiz(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		if(user != null && user.isPythonAccess()) {
			List<Quiz> lst1 =  quizdaoimpl.getQuizBySubject("Python");
		    mv = new ModelAndView("pythonquiz");
		    mv.addObject("lst1",lst1);// for showing question
			session.setAttribute("lst1", lst1);
		}
		else {
			mv = new ModelAndView("userhome");
			mv.addObject("msg", "Please purchase the Python course to access the quiz.");
		}
		return mv;
	}
	
	@PostMapping("/submitPythonQuiz")
	public String submitPythonQuiz(HttpServletRequest request,Model m) {
		

		List<Quiz> lst1 = quizdaoimpl.getQuizBySubject("Python");
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		
		int score = 0;
		for(Quiz q : lst1) {	
			String userAnswer = request.getParameter("q_"+q.getId());
			if (userAnswer != null &&
		            userAnswer.equalsIgnoreCase(q.getCorrect())) {
		            score++;
		        }
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("Python");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score",score);
		m.addAttribute("total", lst1.size());
		List<Result> lst = resultdaoimpl.getResultByUserId(userid);
		session.setAttribute("lst", lst);
		m.addAttribute("Subject", "Python");
		double percentage = (score * 100.0) / lst1.size();
		m.addAttribute("percentage", percentage);
		String status = (percentage >= 40) ? "PASS" : "FAIL";
		m.addAttribute("status", status);
		return "userResult";
	}
	
	
	@GetMapping("/htmlcssquiz")
	public ModelAndView htmlcssquiz(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		if(user != null && user.isPythonAccess()) {
			List<Quiz> lst1 =  quizdaoimpl.getQuizBySubject("HTML/CSS");
		    mv = new ModelAndView("htmlcssquiz");
		    mv.addObject("lst1",lst1);// for showing question
			session.setAttribute("lst1", lst1);
		}else {
			mv = new ModelAndView("userhome");
			mv.addObject("msg", "Please purchase the HTML/CSS course to access the quiz.");
		}
		
		return mv;
	}
	
	@GetMapping("/userResult")
	public String  userResult(HttpServletRequest request , Model m) {
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		List<Result> lst = resultdaoimpl.getResultByUserId(userid);
		session.setAttribute("lst", lst);
		return "userResult";
	}
	
	
	@PostMapping("/submitHTMLCSSQuiz")
	public String submitHTMLCSSQuiz(HttpServletRequest request,Model m) {
		

		List<Quiz> lst1 = quizdaoimpl.getQuizBySubject("HTML/CSS");
		HttpSession session = request.getSession(false);
		int userid = (int)session.getAttribute("userId");
		
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		
		int score = 0;
		for(Quiz q : lst1) {	
			String userAnswer = request.getParameter("q_"+q.getId());
			if (userAnswer != null &&
		            userAnswer.equalsIgnoreCase(q.getCorrect())) {
		            score++;
		        }
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("HTML/CSS");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score",score);
		m.addAttribute("total", lst1.size());
		List<Result> lst = resultdaoimpl.getResultByUserId(userid);
		session.setAttribute("lst", lst);
		m.addAttribute("Subject", "HTML/CSS");
		double percentage = (score * 100.0) / lst1.size();
		m.addAttribute("percentage", percentage);
		String status = (percentage >= 40) ? "PASS" : "FAIL";
		m.addAttribute("status", status);
		return "userResult";
	}
}
