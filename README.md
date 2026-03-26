# WebProject
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
