package com.aman.daoimpl;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service("otpMailService")
public class MailSender {

    @Value("${mail.sender.email}")
    private String fromEmail;

    @Value("${mail.sender.password}")
    private String emailPassword;

    public void sendMail(String toEmail, String username, String pass) {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, emailPassword);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));

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

    public void sendOtpMail(String toEmail, int otp) {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, emailPassword);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Learnify - Password Reset OTP");

            String msg =
                "<div style='font-family: Arial, sans-serif; line-height: 1.6; color: #333;'>"
              + "<p>You requested a password reset for your <strong>Learnify</strong> account.</p>"
              + "<p>Your OTP is:</p>"
              + "<h2 style='background:#2b6cff; color:white; padding:10px 20px; "
              + "display:inline-block; border-radius:5px; letter-spacing:5px;'>"
              + otp + "</h2>"
              + "<p>This OTP is valid for <strong>10 minutes</strong>.</p>"
              + "<p>If you did not request this, please ignore this email.</p>"
              + "<br>"
              + "<p>Best Regards,<br>"
              + "<strong>Team Learnify</strong></p>"
              + "</div>";

            message.setContent(msg, "text/html");
            Transport.send(message);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}