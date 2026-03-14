package com.aman.dao;

import java.util.List;

import com.aman.pojo.Questions;

public interface QuestionsDao {

	boolean addQusetion(Questions q);
	boolean updateQuestion(Questions q);
	boolean closeQuestion(Questions q);
	List<Questions> getQuestionBySubject(String subject);
	List<Questions> getAllQuestion();
}
