package com.aman.dao;

import java.util.List;

import com.aman.pojo.Result;

public interface ResultDao {

	boolean addResult(Result r);
	List<Result> getResultByUserId(int userId);
	List<Result> getResults();
}
