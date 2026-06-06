package com.aman.controller;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class AdminController {

    private final UserInfoDaoImpl userInfoDaoImpl;
	
	@Autowired
	private QuestionsDaoImpl daoimpl;
	
	@Autowired
	private ResultDaoImpl resultDaoImpl;

	@Autowired
	private QuizDaoImpl quizdaoimpl;

    AdminController(UserInfoDaoImpl userInfoDaoImpl) {
        this.userInfoDaoImpl = userInfoDaoImpl;
    }
	
	@GetMapping("/admcourses")
	public String admcourse(HttpServletRequest request) {
		if (!isAdmin(request)) return "login";
		return "admcourses";
	}

	@GetMapping("/admabout")
	public String admabout(HttpServletRequest request) {
		if (!isAdmin(request)) return "login";
		return "admabout";
	}
	
	@GetMapping("/home")
	public String home(HttpServletRequest request) {
		if (!isAdmin(request)) return "login";
		return "home";
	}
	
	@GetMapping("/admquiz")
	public ModelAndView quizsubject(HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		List<Quiz> lst = quizdaoimpl.getAllQuiz();
		Set<String> subjects = new LinkedHashSet<>();
		for(Quiz q : lst) {
			subjects.add(q.getSubject());
		}
		ModelAndView mv = new ModelAndView("admquiz");
		mv.addObject("lst",lst);
		mv.addObject("subjects",subjects);
		HttpSession session = request.getSession(false);
		session.setAttribute("lst", lst);
		session.setAttribute("subjects", subjects);
		return mv;
	}
	
	@GetMapping("/admmanagecourse")
	public ModelAndView listsubject(HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		List<Questions> lst = daoimpl.getAllQuestion();
		Set<String> subjects = new LinkedHashSet<>();
	    for (Questions q : lst) {
	        subjects.add(q.getSubject());
	    }
	    ModelAndView mv = new ModelAndView("admmanagecourse");
	    mv.addObject("lst", lst);
	    mv.addObject("subjects", subjects);
		HttpSession session = request.getSession(false);
		session.setAttribute("lst", lst);
		session.setAttribute("subjects", subjects);
		return mv;
	}
	
	@PostMapping("/saveQuestion")
	public ModelAndView addQuestion(Questions q, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		ModelAndView mv = null;
		if(daoimpl.addQusetion(q)) {
			mv = new ModelAndView("admmanagecourse","msg","Added Successfully");
			List<Questions> lst = daoimpl.getAllQuestion();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admmanagecourse","msg","Failed");
		}
		return mv;
	}
	
	@PostMapping("/addQuiz")
	public ModelAndView addQuiz(Quiz q, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		ModelAndView mv = null;
		if(quizdaoimpl.addQuiz(q)) {
			mv = new ModelAndView("admquiz","msg","Added Successfully");
			List<Quiz> lst = quizdaoimpl.getAllQuiz();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admquiz","msg","Failed");
		}
		return mv;
	}
	
	@PostMapping("/updateQuiz")
	public ModelAndView updateQuiz(Quiz q, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		ModelAndView mv = null;
		if(quizdaoimpl.updateQuiz(q)) {
			mv = new ModelAndView("admquiz","msg","Updated Successfully");
			List<Quiz> lst = quizdaoimpl.getAllQuiz();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admquiz","msg","Failed");
		}
		return mv;
	}
	
	@GetMapping("/deleteQuiz")
	public ModelAndView deleteQuiz(@RequestParam("id")int id, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		Quiz q = new Quiz();
		q.setId(id);
		ModelAndView mv = null;
		if(quizdaoimpl.closeQuiz(q)) {
			mv = new ModelAndView("admquiz","msg","Deleted Successfully");
			List<Quiz> lst = quizdaoimpl.getAllQuiz();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admquiz","msg","Failed");
		}
		return mv;
	}
	
	@PostMapping("/updateQuestion")
	public ModelAndView updateQuestion(@RequestParam("question_Id")int question_id, @RequestParam("subject")String subject,
			@RequestParam("question")String question, @RequestParam("answer")String answer, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		Questions q = new Questions();
		q.setQuestion_id(question_id);
		q.setSubject(subject);
		q.setQuestion(question);
		q.setAnswer(answer);
		ModelAndView mv = null;
		if(daoimpl.updateQuestion(q)) {
			mv = new ModelAndView("admmanagecourse","msg","Updated Successfully");
			List<Questions> lst = daoimpl.getAllQuestion();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admmanagecourse","msg","Failed");
		}
		return mv;
	}

	@GetMapping("/admResult")
	public ModelAndView admResult(HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		ModelAndView mv = null;
		List<Result> lst = resultDaoImpl.getResults();
		if(lst!=null) {
			mv = new ModelAndView("admResult","lst",lst);
		}
		return mv;
	}
	
	@GetMapping("/admUser")
	public ModelAndView admuser(HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		ModelAndView mv = null;
		List<UserInfo> lst = userInfoDaoImpl.getAll();
		if(lst!=null) {
			mv = new ModelAndView("admUser","lst",lst);
		}
		return mv;
	}
	
	@GetMapping("/deleteQuestion")
	public ModelAndView deleteQuestion(@RequestParam("id")int question_id, HttpServletRequest request) {
		if (!isAdmin(request)) return new ModelAndView("login", "msg", "Please login as admin.");
		Questions q = new Questions();
		q.setQuestion_id(question_id);
		ModelAndView mv = null;
		if(daoimpl.closeQuestion(q)) {
			mv = new ModelAndView("admmanagecourse","msg","Deleted Successfully");
			List<Questions> lst = daoimpl.getAllQuestion();
			HttpSession session = request.getSession(false);
			session.setAttribute("lst", lst);
		}else {
			mv= new ModelAndView("admmanagecourse","msg","Failed");
		}
		return mv;
	}
	
	private boolean isAdmin(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session == null) return false;
	    UserInfo user = (UserInfo) session.getAttribute("loginuser");
	    return user != null && "ADMIN".equals(user.getRole());
	}
}