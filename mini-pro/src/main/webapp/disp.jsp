<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.gqt.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student List</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      background: linear-gradient(135deg, #e0f7fa, #fce4ec);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }

    header {
      background: linear-gradient(90deg, #00897b, #7b1fa2, #f06292);
      color: white;
      padding: 1.5rem 1rem;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    header h1 {
      font-size: 2rem;
      margin: 0;
      font-weight: 600;
      letter-spacing: 2px;
    }

    main {
      flex: 1;
      padding: 2rem 1rem;
    }

    .table-container {
      max-width: 1000px;
      margin: 0 auto;
      background: white;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
      overflow-x: auto;
      padding: 1rem;
    }

    thead {
      background: linear-gradient(45deg, #26a69a, #8e24aa, #f06292);
      color: white;
      text-align: center;
    }

    tbody tr:hover {
      background-color: #f3e5f5;
    }

    .btn-gradient {
      background: linear-gradient(45deg, #26a69a, #8e24aa, #f06292);
      color: white;
      border: none;
      padding: 0.75rem 1.5rem;
      font-size: 1.1rem;
      font-weight: 600;
      border-radius: 12px;
      text-decoration: none;
      transition: box-shadow 0.3s ease;
      display: inline-block;
    }

    .btn-gradient:hover {
      box-shadow: 0 0 12px #8e24aa;
      text-decoration: none;
      color: white;
    }

    .no-data {
      text-align: center;
      padding: 2rem;
      font-size: 1.25rem;
      color: #555;
      background: white;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.1);
      max-width: 600px;
      margin: 2rem auto;
    }

    footer {
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
      color: #666;
      background-color: #f9f9f9;
      border-top: 1px solid #ddd;
    }
    
  </style>
</head>
<body>

  <header>
    <h1>UNICORN ACADEMY - Student Records</h1>
  </header>

  <main>
    <%
      List<Student> slist = (List<Student>) session.getAttribute("student");
      if (slist != null && !slist.isEmpty()) {
    %>
    <div class="table-container mb-4">
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Gender</th>
            <th>City</th>
            <th>Course</th>
            <th>Amount</th>
          </tr>
        </thead>
        <tbody class="text-center">
          <%
            for (Student s1 : slist) {
          %>
          <tr>
  <td><%= s1.getSid() %></td>
  <td><%= s1.getName() %></td>
  <td><%= s1.getGender() %></td>
  <td><%= s1.getCity() %></td>
  <td><%= s1.getCourse() %></td>
  <td><%= s1.getAmount() %></td>
  <td>
  <a href="edit.jsp?sid=<%=s1.getSid()%>" class="btn btn-sm btn-warning me-1">Edit</a>
            <a href="delete?sid=<%=s1.getSid()%>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this record?');">Delete</a>

</td>

</tr>


          <%
            }
          %>
        </tbody>
      </table>
    </div>
    
    <%
      } else {
    %>
    <div class="no-data">
      No student data available.
    </div>
    <%
      }
    %>
	
    <div class="text-center">
      <a href="index.jsp" class="btn-gradient">Home Page</a>
    </div>
    
  </main>

  <footer>
    &copy; 2025 Unicorn Academy. All rights reserved.
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>