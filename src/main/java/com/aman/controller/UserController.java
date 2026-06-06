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
	public String userhome(HttpServletRequest request) {
		if (!isLoggedIn(request)) return "login";
		return "userhome";
	}

	@PostMapping("/subjectquiz")
	public ModelAndView subjectquiz(HttpServletRequest request, @RequestParam("subject") String subject) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		boolean hasAccess = false;
		if ("Python".equals(subject)) {
			hasAccess = user.isPythonAccess();
		} else if ("HTML/CSS".equals(subject)) {
			hasAccess = user.isHtmlcssAccess();
		} else if ("Java".equals(subject)) {
			hasAccess = true;
		}
		if (hasAccess) {
			List<Quiz> lst1 = quizdaoimpl.getRandomQuizBySubject(subject); // RANDOM
			if (subject.equals("Python")) {
				mv = new ModelAndView("pythonquiz");
			} else if (subject.equals("HTML/CSS")) {
				mv = new ModelAndView("htmlcssquiz");
			} else if (subject.equals("Java")) {
				mv = new ModelAndView("javaquiz");
			}
			mv.addObject("lst1", lst1);
			session.setAttribute("lst1", lst1);
		} else {
			mv = new ModelAndView("userhome");
			mv.addObject("buy", "Please purchase the " + subject + " course to access the quiz.");
		}
		return mv;
	}

	@GetMapping("/usercontact")
	public String usercontact(HttpServletRequest request) {
		if (!isLoggedIn(request)) return "login";
		return "usercontact";
	}

	@GetMapping("/userquiz")
	public ModelAndView userquiz(HttpServletRequest request) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		List<Quiz> lst1 = quizdaoimpl.getRandomQuizBySubject("Java"); // RANDOM
		ModelAndView mv = new ModelAndView("userquiz");
		mv.addObject("lst1", lst1);
		HttpSession session = request.getSession(false);
		session.setAttribute("lst1", lst1);
		return mv;
	}

	@GetMapping("/userjava")
	public ModelAndView java(HttpServletRequest request) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		List<Questions> lst = daoimpl.getQuestionBySubject("Java");
		ModelAndView mv = new ModelAndView("userjava");
		mv.addObject("lst", lst);
		HttpSession session = request.getSession(false);
		session.setAttribute("lst", lst);
		return mv;
	}

	@GetMapping("/userpython")
	public ModelAndView python(HttpServletRequest request) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = new ModelAndView("userpython");
		if (!user.isPythonAccess()) {
			userdaoimpl.updatePythonAccess(userid);
			mv.addObject("buy", "Payment successful! You can now access the quiz.");
		}
		UserInfo updateuser = userdaoimpl.getUserByUserId(userid);
		session.setAttribute("pythonAccess", updateuser.isPythonAccess());
		session.setAttribute("htmlAccess", updateuser.isHtmlcssAccess());
		session.setAttribute("user", updateuser);
		List<Questions> lst = daoimpl.getQuestionBySubject("Python");
		mv.addObject("lst", lst);
		session.setAttribute("lst", lst);
		return mv;
	}

	@GetMapping("/userhtmlcss")
	public ModelAndView htmlcss(HttpServletRequest request) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = new ModelAndView("userhtmlcss");
		if (!user.isHtmlcssAccess()) {
			userdaoimpl.updateHtmlCssAccess(userid);
			mv.addObject("buy", "Payment successful! You can now access the quiz.");
		}
		UserInfo updateuser = userdaoimpl.getUserByUserId(userid);
		session.setAttribute("pythonAccess", updateuser.isPythonAccess());
		session.setAttribute("htmlAccess", updateuser.isHtmlcssAccess());
		session.setAttribute("user", updateuser);
		List<Questions> lst = daoimpl.getQuestionBySubject("HTML/CSS");
		mv.addObject("lst", lst);
		session.setAttribute("lst", lst);
		return mv;
	}

	@GetMapping("/javaquiz")
	public ModelAndView javaquiz(HttpServletRequest request) {
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		List<Quiz> lst1 = quizdaoimpl.getRandomQuizBySubject("Java"); // RANDOM
		ModelAndView mv = new ModelAndView("javaquiz");
		mv.addObject("lst1", lst1);
		HttpSession session = request.getSession(false);
		session.setAttribute("lst1", lst1);
		return mv;
	}

	@PostMapping("/submitJavaQuiz")
	public String submitJavaQuiz(HttpServletRequest request, Model m) {
		if (!isLoggedIn(request)) return "login";
		HttpSession session = request.getSession(false);
		List<Quiz> lst1 = (List<Quiz>) session.getAttribute("lst1"); // session se lo — same questions
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		int score = 0;
		for (Quiz q : lst1) {
			String userAnswer = request.getParameter("q_" + q.getId());
			if (userAnswer != null && userAnswer.equalsIgnoreCase(q.getCorrect())) {
				score++;
			}
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("Java");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score", score);
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
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		if (user != null && user.isPythonAccess()) {
			List<Quiz> lst1 = quizdaoimpl.getRandomQuizBySubject("Python"); // RANDOM
			mv = new ModelAndView("pythonquiz");
			mv.addObject("lst1", lst1);
			session.setAttribute("lst1", lst1);
		} else {
			mv = new ModelAndView("userhome");
			mv.addObject("msg", "Please purchase the Python course to access the quiz.");
		}
		return mv;
	}

	@PostMapping("/submitPythonQuiz")
	public String submitPythonQuiz(HttpServletRequest request, Model m) {
		if (!isLoggedIn(request)) return "login";
		HttpSession session = request.getSession(false);
		List<Quiz> lst1 = (List<Quiz>) session.getAttribute("lst1"); // session se lo — same questions
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		int score = 0;
		for (Quiz q : lst1) {
			String userAnswer = request.getParameter("q_" + q.getId());
			if (userAnswer != null && userAnswer.equalsIgnoreCase(q.getCorrect())) {
				score++;
			}
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("Python");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score", score);
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
		if (!isLoggedIn(request)) return new ModelAndView("login", "msg", "Please login first.");
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		ModelAndView mv = null;
		if (user != null && user.isHtmlcssAccess()) {
			List<Quiz> lst1 = quizdaoimpl.getRandomQuizBySubject("HTML/CSS"); // RANDOM
			mv = new ModelAndView("htmlcssquiz");
			mv.addObject("lst1", lst1);
			session.setAttribute("lst1", lst1);
		} else {
			mv = new ModelAndView("userhome");
			mv.addObject("msg", "Please purchase the HTML/CSS course to access the quiz.");
		}
		return mv;
	}

	@GetMapping("/userResult")
	public String userResult(HttpServletRequest request, Model m) {
		if (!isLoggedIn(request)) return "login";
		HttpSession session = request.getSession(false);
		int userid = (int) session.getAttribute("userId");
		List<Result> lst = resultdaoimpl.getResultByUserId(userid);
		session.setAttribute("lst", lst);
		return "userResult";
	}

	@PostMapping("/submitHTMLCSSQuiz")
	public String submitHTMLCSSQuiz(HttpServletRequest request, Model m) {
		if (!isLoggedIn(request)) return "login";
		HttpSession session = request.getSession(false);
		List<Quiz> lst1 = (List<Quiz>) session.getAttribute("lst1"); // session se lo — same questions
		int userid = (int) session.getAttribute("userId");
		UserInfo user = userdaoimpl.getUserByUserId(userid);
		int score = 0;
		for (Quiz q : lst1) {
			String userAnswer = request.getParameter("q_" + q.getId());
			if (userAnswer != null && userAnswer.equalsIgnoreCase(q.getCorrect())) {
				score++;
			}
		}
		Result r = new Result();
		r.setUser(user);
		r.setSubject("HTML/CSS");
		r.setScore(score);
		r.setTotalQuestions(lst1.size());
		resultdaoimpl.addResult(r);
		m.addAttribute("score", score);
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

	private boolean isLoggedIn(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session == null) return false;
		UserInfo user = (UserInfo) session.getAttribute("loginuser");
		return user != null;
	}
}