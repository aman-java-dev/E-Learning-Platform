# 📚 Learnify — E-Learning Platform

A full-stack online learning platform built with Spring Boot and MVC architecture, where students can purchase courses, attempt quizzes, and track their results. Admin can manage all content and users.

---

## 🚀 Tech Stack

| Layer | Technology |
|---|---|
| Backend | Java, Spring Boot, Spring Data JPA |
| Frontend | JSP, HTML5, CSS3, Bootstrap, JavaScript |
| Database | MySQL |
| Security | Spring Security, BCrypt |
| Payment | Razorpay Payment Gateway |
| Email | JavaMail API, Gmail SMTP |
| Build Tool | Maven |

---

## ✨ Features

### 👤 User
- Register with name, email, password and profile photo
- Automatic welcome email on registration
- BCrypt encrypted password storage
- Session-based login with role-based redirection
- Forgot password with OTP verification via email
- Access free Java course without payment
- Purchase Python and HTML/CSS courses via Razorpay
- Attempt quizzes — 10 random questions picked from 30 per subject on every attempt
- View quiz results with score, percentage, and PASS/FAIL status

### 🔐 Admin
- Secure admin dashboard — protected routes, unauthorized access redirected to login
- View all registered users
- View all quiz results of all users with date and score
- Add, edit, delete quiz questions subject wise
- Add and manage course theory content subject wise

---

## 🗄️ Database Tables

| Table | Description |
|---|---|
| users | User info, role, course access flags |
| questions | Theory Q&A for each subject |
| quiz | MCQ questions with 4 options and correct answer |
| quiz_result | User wise quiz attempts with score and date |

---

## 🔒 Security

- BCrypt password encryption
- Session based authentication
- Role based route protection — isAdmin() and isLoggedIn() checks on all routes
- Secrets stored in application.properties — not hardcoded in code

---

## 📂 Project Structure
src/main/java/com/aman/
├── config/          — Spring Security config
├── controller/      — All controllers (Login, Admin, User, Payment)
├── dao/             — DAO interfaces
├── daoimpl/         — DAO implementations + MailSender
├── pojo/            — Entity classes (UserInfo, Quiz, Questions, Result)
└── repository/      — JPA Repositories

---

## ⚙️ How to Run Locally

1. Clone the repository
```bash
git clone https://github.com/aman-java-dev/E-Learning-Platform.git
```

2. Create MySQL database
```sql
CREATE DATABASE learnify;
```

3. Copy application.properties.example to application.properties
```bash
cp src/main/resources/application.properties.example src/main/resources/application.properties
```

4. Fill your details in application.properties
```properties
spring.datasource.username=YOUR_DB_USERNAME
spring.datasource.password=YOUR_DB_PASSWORD
razorpay.key.id=YOUR_RAZORPAY_KEY
razorpay.key.secret=YOUR_RAZORPAY_SECRET
mail.sender.email=YOUR_EMAIL
mail.sender.password=YOUR_APP_PASSWORD
```

5. Run the project
```bash
mvn spring-boot:run
```

6. Open browser
http://localhost:8000

---

## 👨‍💻 Author

**Aman Gupta**
- GitHub: https://github.com/aman-java-dev
- LinkedIn: https://www.linkedin.com/in/amangupta-java/
- Email: aman.dev.ind@gmail.com