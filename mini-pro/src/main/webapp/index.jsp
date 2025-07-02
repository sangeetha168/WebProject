<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Unicorn Academy</title>

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
      background: #f4f7fa;
      margin: 0;
    }
    .navbar {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
    }
    .navbar-brand, .nav-link {
      color: #fff !important;
      font-weight: 600;
    }
    
    .navbar-brand i { margin-right: .5rem; }
    .hero {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
      height: 130px;
      position: relative;
      color: #fff;
    }
    .hero-overlay {
      background: rgba(0, 0, 0, 0.5);
      height: 100%;
      width: 100%;
      position: absolute;
      top: 0; left: 0;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      top: 50%;
      transform: translateY(-50%);
      text-align: center;
    }
    .hero-content h1 {
      font-size: 3rem;
      font-weight: 500;
      letter-spacing: 2px;
    }
    .hero-content p {
      font-size: 1rem;
      max-width: 700px;
      margin: 1rem auto 0;
    }
    .about {
      padding: 4rem 0;
    }
    .about .profile {
      width: 200px;
      height: 200px;
      border-radius: 50%;
      object-fit: cover;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }
    .about h2 {
      font-weight: 600;
      margin-bottom: 1rem;
       color: #7b1fa2
    }
    .social-icons a {
      color: #2a2f45;
      font-size: 1.5rem;
      margin-right: 1rem;
      transition: color .2s;
    }
    .social-icons a:hover {
      color: #7b1fa2;
    }
    footer {
      background: #2a2f45;
      color: #ccc;
      padding: 1rem 0;
      text-align: center;
      font-size: .9rem;
    }
    .course-card {
      background: white;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      padding: 1rem;
      transition: transform 0.3s;
    }

    .course-card:hover {
      transform: translateY(-5px);
    }

    .contact-card {
      max-width: 600px;
      margin: 2rem auto;
      background: white;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
      padding: 2rem;
      text-align: center;
    }

    .contact-card h3 {
      margin-bottom: 1rem;
      color: #8e24aa;
    }
    .section-title {
      text-align: center;
      font-size: 1.8rem;
      font-weight: 600;
      margin: 2rem 0 1rem;
      color: #7b1fa2;
    }
    
    .why-choose {
  background: #f8f9fb;
}

.why-choose .card {
  border-radius: 12px;
  transition: transform 0.3s, box-shadow 0.3s;
}

.why-choose .card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.1);
}

.why-choose .card-title {
  color: #2a2f45;
  font-weight: 600;
}

.why-choose i {
  color: #8e24aa;
}
     .social-icons a {
      color: #fff;
      font-size: 1.3rem;
      margin-left: 1rem;
      transition: color 0.2s;
    }
    .social-icons a:hover {
      color: #f06292;
    }
   .nav-link {
  transition: color 0.2s;
}

.nav-link:hover {
  background-color: #f06292;   /* Choose your hover background color */
  color: #f06292;              /* Text color on hover */
  border-radius: 5px;          /* Optional for rounded effect */
}
  </style>
</head>
<body>

  <!-- NAVBAR -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">
        <i class="fas fa-graduation-cap"></i>Unicorn Academy
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#fff"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="navMenu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="registration1.jsp">Register</a></li>
          <li class="nav-item"><a class="nav-link" href="disp.jsp">Record</a></li>
        </ul>
        <div class="ms-3 social-icons">
          <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
          <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
          <a href="https://youtube.com" target="_blank"><i class="fab fa-youtube"></i></a>
        </div>

      </div>
    </div>
  </nav>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-overlay"></div>
    <div class="hero-content">
      <h1>Welcome to Unicorn Academy</h1>
      <p>Your gateway to cutting‑edge tech education, expert instructors, and personalized learning paths. Join us and shape your future today.</p>
    </div>
  </section>

  <!-- ABOUT SECTION -->
  <section class="about">
    <div class="container d-flex flex-column flex-md-row align-items-center">
      <div class="text-center mb-4 mb-md-0 me-md-5">
        <img src="https://i.pinimg.com/474x/f5/63/64/f563649ad1d473144710fb9929319c77.jpg" alt="Academy Logo" class="profile">
      </div>
      <div>
        <h2>About Unicorn Academy</h2>
        <p>
          Unicorn Academy is a modern learning institution committed to transforming education through innovative technology and practical training.
          We offer industry‑aligned courses in Fullstack Development, Data Science, Analytics, and more—designed to give you the skills
          employers demand. Our expert instructors and dynamic curriculum ensure you graduate ready to thrive in today’s competitive job market.
        </p>
        <p>	
          Whether you’re a recent graduate or a working professional, our flexible programs and supportive community make learning
          both effective and enjoyable. Welcome to Unicorn Academy—where your success story begins.
        </p>
      </div>
    </div>
  </section>
  <!-- Courses Available Section -->
  <section>
    <h2 class="section-title">Our Courses</h2>
    <div class="container">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="course-card text-center">
            <h5>Java Fullstack</h5>
            <p>Master Java, Spring, Angular and become industry-ready.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card text-center">
            <h5>Python Fullstack</h5>
            <p>Learn Django, Flask, React for modern web apps.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card text-center">
            <h5>Data Analytics</h5>
            <p>Excel in data visualization, SQL, Power BI, and analytics.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card text-center">
            <h5>Data Science</h5>
            <p>Build ML models, use Python, and learn real-world projects.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card text-center">
            <h5>Testing</h5>
            <p>Manual and automation testing with industry tools.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- WHY CHOOSE US SECTION -->
<section class="why-choose py-5 bg-light">
  <div class="container">
    <h2 class="section-title">Why Choose Unicorn Academy</h2>
    <div class="row g-4 mt-4">
      <div class="col-md-4">
        <div class="card h-100 text-center border-0 shadow-sm">
          <div class="card-body">
            <i class="fas fa-chalkboard-teacher fa-2x mb-3 text-primary"></i>
            <h5 class="card-title">Expert Faculty</h5>
            <p class="card-text">Learn from experienced industry professionals dedicated to helping you succeed.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card h-100 text-center border-0 shadow-sm">
          <div class="card-body">
            <i class="fas fa-laptop-code fa-2x mb-3 text-primary"></i>
            <h5 class="card-title">Hands-on Training</h5>
            <p class="card-text">Gain practical skills with real-world projects and modern development tools.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card h-100 text-center border-0 shadow-sm">
          <div class="card-body">
            <i class="fas fa-briefcase fa-2x mb-3 text-primary"></i>
            <h5 class="card-title">Career Support</h5>
            <p class="card-text">Get job-ready with interview preparation, resume workshops, and placement assistance.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  
  
   <section>
    <div class="contact-card">
      <h3>Contact Us</h3>
      <p>📍 Unicorn Academy, 123 Learning Lane, Bengaluru, Karnataka</p>
      <p>📞 +91 1234567890</p>
      <p>📧 info@unicornacademy.com</p>
    </div>
  </section>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <a href="index.jsp" class="text-white text-decoration-none me-3"><i class="fas fa-home"></i> Home</a>
      <span>&copy; 2025 Unicorn Academy. All rights reserved.</span>
    </div>
  </footer>

  <!-- Bootstrap Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
