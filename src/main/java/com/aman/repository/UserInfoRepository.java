package com.aman.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.aman.pojo.UserInfo;

public interface UserInfoRepository extends CrudRepository<UserInfo, Integer> {

	@Query("From UserInfo where username=:user")
	Optional<UserInfo> findByUsername(String user);

}
