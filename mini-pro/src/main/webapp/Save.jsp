<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Student Registration Success | Unicorn Academy</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />

  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      background-color: #f4f7fa;
      margin: 0;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* Navbar style */
    .navbar {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
    }
    .navbar-brand, .nav-link {
      color: #fff !important;
      font-weight: 600;
    }
    .navbar-brand i {
      margin-right: .5rem;
    }
   

    /* Main success card */
    main {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 2rem 1rem;
    }
    .card-success {
      background: white;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
      max-width: 500px;
      width: 100%;
      padding: 2rem;
      text-align: center;
    }
    .card-success h2 {
      color: #00897b;
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 1rem;
    }
    .card-success p {
      font-size: 1rem;
      color: #555;
      margin-bottom: 2rem;
    }

    .btn-gradient {
      background: linear-gradient(45deg, #26a69a, #8e24aa, #f06292);
      color: white;
      border: none;
      padding: 0.75rem 1.5rem;
      font-size: 1rem;
      font-weight: 600;
      border-radius: 10px;
      text-decoration: none;
      transition: box-shadow 0.3s ease, transform 0.2s;
      margin: 0.5rem;
      display: inline-block;
    }
    .btn-gradient:hover {
      box-shadow: 0 0 12px #8e24aa;
      text-decoration: none;
      color: white;
      transform: translateY(-2px);
    }

    footer {
      text-align: center;
      padding: 0.75rem;
      font-size: 0.85rem;
      color: #ccc;
      background-color: #2a2f45;
    }
    footer a {
      color: #f06292;
      text-decoration: none;
      margin-right: 1rem;
    }
    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <!-- NAVBAR -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">
        <i class="fas fa-graduation-cap"></i> Unicorn Academy
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#fff"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="navMenu">
        <ul class="navbar-nav ms-auto">
        </ul>
        
      </div>
    </div>
  </nav>

  <!-- MAIN CONTENT -->
  <main>
    <div class="card-success">
      <h2><i class="fas fa-check-circle"></i> Registration Successful!</h2>
      <p>Thank you for registering with Unicorn Academy. Your student record has been saved successfully.</p>
      <div>
        <a href="registration1.jsp" class="btn-gradient">Add New Student</a>
        <form action="/mini-pro/displayrecord" method="get" style="display:inline;">
          <button type="submit" class="btn-gradient">Display Student Info</button>
          <a href="DeleteStudent.jsp" class="btn-gradient">Delete Student Record</a>
        </form>
      </div>
    </div>
  </main>
  

  <!-- FOOTER -->
  <footer>
    <a href="index.jsp"><i class="fas fa-home"></i> Home</a>
    &copy; 2025 Unicorn Academy. All rights reserved.
  </footer>

  <!-- Bootstrap Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
