# WebProject
# 🧠 Spring AI RAG with MySQL (Student-Course Management)

This project is a Spring Boot application that integrates:

- ✅ Spring AI
- ✅ Ollama (Local LLM - phi3 model)
- ✅ MySQL (XAMPP)
- ✅ RAG (Retrieval Augmented Generation)

The system converts natural language questions into SQL queries using AI and fetches data from a relational database.

---

## 🚀 Features

- 🔹 Ask questions in natural language
- 🔹 AI converts question → SQL query
- 🔹 Executes query using JDBC
- 🔹 Returns dynamic HTML response
- 🔹 Uses local LLM (Ollama - phi3)
- 🔹 MySQL relational database (Student-Course mapping)

---

## 🛠️ Tech Stack

- Java 17+
- Spring Boot
- Spring AI
- Ollama (phi3 model)
- MySQL (XAMPP)
- HikariCP (Connection Pooling)
- JDBC Template

---

## 📂 Database Schema

### Tables:

- **Student**
- **Course**
- **StudentCourse** (Many-to-Many mapping)

Example Query Generated:

```sql
SELECT sc.student_id, s.name AS student_name, c.name AS course_name
FROM StudentCourse sc
JOIN Student s ON sc.student_id = s.id
JOIN Course c ON sc.course_id = c.id;
📚 Student Course Management System

A full-stack Java MVC web application built using Servlets, JSP, Hibernate, and MySQL to manage student course enrollment and academic records.

🚀 Features
👨‍🎓 Student Registration & Login
📚 Course Creation & Management
📝 Student Course Enrollment
🔄 CRUD Operations (Create, Read, Update, Delete
🗃️ Database integration using Hibernate ORM
📊 MVC Architecture implementation
🛠️ Tech Stack

Backend:

Java 21
Servlets
Hibernate ORM
JDBC

Frontend:

JSP
HTML5
CSS3
Bootstrap (if used)

Database:

MySQL

Server:

Apache Tomcat 9+

Build Tool:

Maven (if used)
🏗️ Architecture

This project follows the MVC (Model-View-Controller) architecture:

Model → Entity classes (Student, Course, Enrollment)
View → JSP pages
Controller → Servlets
DAO Layer → Hibernate for database operations
🗄️ Database Schema

Main Tables:

students
courses
enrollments
users (if authentication implemented)

Relationships:

One Student → Many Enrollments
One Course → Many Enrollments
