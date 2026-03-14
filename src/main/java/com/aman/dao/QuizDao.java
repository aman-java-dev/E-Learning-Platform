package com.aman.dao;

import java.util.List;

import com.aman.pojo.Quiz;

public interface QuizDao {

	boolean addQuiz(Quiz q);
	boolean updateQuiz(Quiz q);
	boolean closeQuiz(Quiz q);
	List<Quiz> getQuizBySubject(String subject);
	List<Quiz> getAllQuiz();
}
