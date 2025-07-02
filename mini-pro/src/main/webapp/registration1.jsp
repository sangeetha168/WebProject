<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Colorful Student Registration</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      background: linear-gradient(135deg, #e0f7fa, #fce4ec);
      min-height: 100vh;
    }

    header {
      background: linear-gradient(90deg, #00897b, #7b1fa2);
      color: white;
      padding: 2rem 1rem;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    header h1 {
      font-size: 1.5rem;
      margin: 0;
      font-weight: 600;
      letter-spacing: 2px;
    }

    .card {
      max-width: 500px;
      margin: 2rem auto;
      border-radius: 16px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.15);
      border: none;
    }

    .card-header {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
      color: white;
      text-align: center;
      font-size: 1.5rem;
      font-weight: 600;
      border-radius: 16px 16px 0 0;
    }

    .form-label {
      font-weight: 600;
      color: #555;
    }

    .btn-gradient {
      background: linear-gradient(45deg, #26a69a, #8e24aa);
      color: white;
      border: none;
      transition: box-shadow 0.3s ease;
    }

    .btn-gradient:hover {
      box-shadow: 0 0 10px #8e24aa;
    }

    .form-control:focus, .form-select:focus {
      border-color: #8e24aa;
      box-shadow: 0 0 5px rgba(142, 36, 170, 0.5);
    }

    footer {
      text-align: center;
      margin-top: 2rem;
      font-size: 0.9rem;
      color: #666;
    }
  </style>
</head>
<body>

  <header>
    <h1>WELLCOME TO UNICORN ACADEMY</h1>
  </header>

  <div class="card">
    <div class="card-header">
      Student Registration Form
    </div>
    <div class="card-body">
      <form action="/mini-pro/saverecord" method="post">
        <div class="mb-3">
          <label for="sid" class="form-label">Student ID</label>
          <input type="text" id="sid" name="sid" class="form-control" placeholder="Enter Student ID">
        </div>

        <div class="mb-3">
          <label for="fn" class="form-label">Student Name</label>
          <input type="text" id="fn" name="fn" class="form-control" placeholder="Enter Student Name">
        </div>

        <div class="mb-3">
          <label for="gender" class="form-label">Gender</label>
          <select id="gender" name="gender" class="form-select">
            <option value="">-- Select Gender --</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="city" class="form-label">City</label>
          <select id="city" name="city" class="form-select">
            <option value="">-- Select City --</option>
            <option value="hyderabad">Hyderabad</option>
            <option value="karnataka">Karnataka</option>
            <option value="pune">Pune</option>
            <option value="bangalore">Bangalore</option>
            <option value="mysore">Mysore</option>
            <option value="hassan">Hassan</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="course" class="form-label">Course</label>
          <select id="course" name="course" class="form-select">
            <option value="">-- Select Course --</option>
            <option value="java fullstack">Java Fullstack</option>
            <option value="python fullstack">Python Fullstack</option>
            <option value="data analytics">Data Analytics</option>
            <option value="data science">Data Science</option>
            <option value="testing">Testing</option>
          </select>
        </div>

        <div class="mb-3">
          <label for="amount" class="form-label">Amount to be Paid</label>
          <input type="text" id="amount" name="amount" class="form-control" value="0" readonly>
        </div>

        <div class="d-grid">
          <button type="submit" class="btn btn-gradient">REGISTER</button>
        </div>
      </form>
    </div>
  </div>

  <footer>
    &copy; 2025 Global Quest Technologies. All rights reserved.
  </footer>

  <!-- Bootstrap Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

  <script>
    const amountBox = document.querySelector("#amount");
    const courseBox = document.querySelector("#course");

    courseBox.addEventListener("change", () => {
      const selected = courseBox.value.toLowerCase();
      switch (selected) {
        case "java fullstack":
          amountBox.value = 35000;
          break;
        case "python fullstack":
          amountBox.value = 32000;
          break;
        case "data analytics":
          amountBox.value = 40000;
          break;
        case "data science":
          amountBox.value = 36000;
          break;
        case "testing":
          amountBox.value = 15000;
          break;
        default:
          amountBox.value = 0;
      }
    });
  </script>
</body>
</html>