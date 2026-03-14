package com.aman.daoimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.aman.dao.QuizDao;
import com.aman.pojo.Quiz;
import com.aman.repository.QuizRepository;

@Component
public class QuizDaoImpl implements QuizDao{

	@Autowired
	private QuizRepository quizRepository;
	
	@Override
	public boolean addQuiz(Quiz q) {
		try {
			Optional<Quiz> op = quizRepository.findById(q.getId());
			if(op.isPresent()) {
				return false;
			}else {
				quizRepository.save(q);
				return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateQuiz(Quiz q) {
		try {
			Optional<Quiz> op = quizRepository.findById(q.getId());
			if(op.isPresent()) {
				quizRepository.save(q);
				return true;
			}else {
				return false;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean closeQuiz(Quiz q) {
		try {
			quizRepository.deleteById(q.getId());
			return true;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
	}



	@Override
	public List<Quiz> getQuizBySubject(String subject) {
	
		try {
			List<Quiz> lst = quizRepository.getQuizBySubject(subject);
			return lst;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	@Override
	public List<Quiz> getAllQuiz() {
		try {
			List<Quiz> lst = (List<Quiz>)quizRepository.findAll();
			return lst;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}

	
}
