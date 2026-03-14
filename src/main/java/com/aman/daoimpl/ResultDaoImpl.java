package com.aman.daoimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.aman.dao.ResultDao;
import com.aman.pojo.Result;
import com.aman.repository.ResultRepository;

@Component
public class ResultDaoImpl  implements ResultDao{

	@Autowired
	private ResultRepository rRepository;

	@Override
	public boolean addResult(Result r) {
		try {
			
				rRepository.save(r);
				return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Result> getResultByUserId(int userId) {

		try {
			List<Result> r = rRepository.getResultByUserId(userId);
			return r;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	    
	}

	@Override
	public List<Result> getResults() {
		
		try {
			List<Result> lst = (List<Result>) rRepository.findAll();
			return lst;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
}
