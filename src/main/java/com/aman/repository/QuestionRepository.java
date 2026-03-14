package com.aman.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.aman.pojo.Questions;

public interface QuestionRepository  extends CrudRepository<Questions, Integer>{

	@Query("from Questions  where subject=:sub")
	List<Questions> getQuestionBySubject(String sub);
}
