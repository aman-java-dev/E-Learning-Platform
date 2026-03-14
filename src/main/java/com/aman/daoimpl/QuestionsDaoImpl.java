package com.aman.daoimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.aman.dao.QuestionsDao;
import com.aman.pojo.Questions;
import com.aman.repository.QuestionRepository;

@Component
public class QuestionsDaoImpl implements QuestionsDao {
	
	@Autowired
	private QuestionRepository qRepository;

	@Override
	public boolean addQusetion(Questions q) {
		try {
			Optional<Questions> op = qRepository.findById(q.getQuestion_id());
			if(op.isPresent()) {
				return false;
			}else {
				qRepository.save(q);
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
	public boolean updateQuestion(Questions q) {
		try {
			Optional<Questions> op = qRepository.findById(q.getQuestion_id());
			if(op.isPresent()) {
				qRepository.save(q);
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
	public boolean closeQuestion(Questions q) {
		try {
			qRepository.deleteById(q.getQuestion_id());
			return true;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public List<Questions> getQuestionBySubject(String subject) {
	
		try {
			List<Questions> lst = qRepository.getQuestionBySubject(subject);
			return lst;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}



	@Override
	public List<Questions> getAllQuestion() {
		try {
			List<Questions> lst = (List<Questions>)qRepository.findAll();
			return lst;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}

	
}
