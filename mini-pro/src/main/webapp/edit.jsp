<%@ page import="com.gqt.Student, org.hibernate.*, org.hibernate.cfg.Configuration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int sid = Integer.parseInt(request.getParameter("sid"));
    Configuration cfg = new Configuration().configure().addAnnotatedClass(Student.class);
    SessionFactory sf = cfg.buildSessionFactory();
    Session session1 = sf.openSession();
    Student student = session1.get(Student.class, sid);
    session1.close();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style >
    .card-header  {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
     
    }
    .d-flex justify-content-between {
    background: linear-gradient(45deg, #26a69a, #8e24aa);
      
    }

    </style>
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-black">
            <h4 class="mb-0">Edit Student Details</h4>
        </div>
        <div class="card-body">
            <form action="updaterecord" method="post">
                <input type="hidden" name="sid" value="<%=student.getSid()%>">

                <div class="mb-3">
                    <label class="form-label">Student Name</label>
                    <input type="text" name="name" class="form-control" value="<%=student.getName()%>" required>
                </div>

                
                <div class="mb-3">
                    <label class="form-label">Gender</label>
                    <input type="text" name="gender" class="form-control" value="<%=student.getGender()%>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">City</label>
                    <input type="text" name="city" class="form-control" value="<%=student.getCity()%>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Course</label>
                    <input type="text" name="course" class="form-control" value="<%=student.getCourse()%>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Amount</label>
                    <input type="text" name="amount" class="form-control" value="<%=student.getAmount()%>" required>
                </div>

                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Update</button>
                    <a href="disp.jsp" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>