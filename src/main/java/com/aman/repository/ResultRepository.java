package com.aman.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.aman.pojo.Result;

public interface ResultRepository extends CrudRepository<Result, Integer>{

	@Query("from Result r where r.user.userid = :uid order by r.attemptDate desc")
	List<Result> getResultByUserId(int uid);
}
