package com.aman.pojo;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "quiz_result")
public class Result {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "result_id")
    private Integer resultId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", nullable = false)
    private UserInfo user;

    private String subject;
    private int score;
    @Column(name = "total_questions")
    private int totalQuestions;

    @Column(name = "attempt_date")
    private LocalDateTime attemptDate = LocalDateTime.now();

		public Result() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Result(int resultId, UserInfo user, String subject, int score, int totalQuestions,
				LocalDateTime attemptDate) {
			super();
			this.resultId = resultId;
			this.user = user;
			this.subject = subject;
			this.score = score;
			this.totalQuestions = totalQuestions;
			this.attemptDate = attemptDate;
		}

		public Integer getResultId() {
			return resultId;
		}

		public void setResultId(int resultId) {
			this.resultId = resultId;
		}

		public UserInfo getUser() {
			return user;
		}

		public void setUser(UserInfo user) {
			this.user = user;
		}

		public String getSubject() {
			return subject;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public int getScore() {
			return score;
		}

		public void setScore(int score) {
			this.score = score;
		}

		public int getTotalQuestions() {
			return totalQuestions;
		}

		public void setTotalQuestions(int totalQuestions) {
			this.totalQuestions = totalQuestions;
		}

		public LocalDateTime getAttemptDate() {
			return attemptDate;
		}

		public void setAttemptDate(LocalDateTime attemptDate) {
			this.attemptDate = attemptDate;
		}
	    
	    
}
