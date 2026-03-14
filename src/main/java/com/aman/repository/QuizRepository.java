package com.aman.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.aman.pojo.Quiz;

public interface QuizRepository extends CrudRepository<Quiz, Integer>{

	@Query("from Quiz q where q.subject=:sub")
	List<Quiz> getQuizBySubject(String sub);
}
