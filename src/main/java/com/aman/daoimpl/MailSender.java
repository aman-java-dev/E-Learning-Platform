package com.aman.daoimpl;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;


import org.springframework.stereotype.Service;

@Service("otpMailService")
public class MailSender {
		public  void sendMail(String toEmail,String username, String pass) {
			
			final String fromEmail="aman.dev.ind@gmail.com";
			final String password="fjgw skel dndr hnmr";
			
			Properties props=new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			
			Session session=Session.getInstance(props, new Authenticator() 
			{
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}
			});
			
			try {
				Message message=new MimeMessage(session);
				message.setFrom(new InternetAddress(fromEmail));
				
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
				message.setRecipients(Message.RecipientType.CC, InternetAddress.parse("neerajpawar609@gmail.com"));
				message.setRecipients(Message.RecipientType.BCC, InternetAddress.parse("amangu5749@gmail.com"));
				
				message.setSubject("Welcome to Learnify – Your Account Details");
				String msg =
				        "<div style='font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: #333;'>"
				      + "<p>Dear <strong>" + username + "</strong>,</p>"

				      + "<p>Welcome to <strong>Learnify</strong>! 🎉</p>"

				      + "<p>Your account has been successfully created. You can now log in using the credentials provided below.</p>"

				      + "<h3 style='color: #333; margin-top: 20px;'>📌 Your Login Details</h3>"
				      + "<div style='background-color: #f9f9f9; padding: 15px; border-left: 5px solid #2b6cff; margin: 15px 0;'>"
				      + "<p style='margin: 5px 0;'><strong>Username:</strong> " + username + "</p>"
				      + "<p style='margin: 5px 0;'><strong>Password:</strong> " + pass + "</p>"
				      + "</div>"

				      + "<p>If you did not request this registration, please ignore this email or contact our support team immediately.</p>"

				      + "<br>"
				      + "<p>Happy Learning! 🚀</p>"
				      + "<p>Best Regards,<br>"
				      + "<strong>Team Learnify</strong><br>"
				      + "<span style='font-size: 12px; color: #777;'>Secure Learning Platform</span>"
				      + "</p>"
				      + "</div>";


				message.setContent(msg, "text/html");
				Transport.send(message);
				
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
	}