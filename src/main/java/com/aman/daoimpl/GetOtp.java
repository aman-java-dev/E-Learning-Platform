package com.aman.daoimpl;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class GetOtp {

	public int getOTP()
	{
		int otp;
		Random r = new Random();
		otp =  r.nextInt(1000000);
		return otp;
	}
}