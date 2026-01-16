<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>ProjectPulse+ | The Future of Work</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=Poppins:wght@400;600;700&display=swap"
      rel="stylesheet"
    />

    <!-- Bootstrap & Icons -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../files/css/bootstrap.css"
    />
    <link href="../../files/css/style.css" rel="stylesheet" />
    <link href="../../files/css/responsive.css" rel="stylesheet" />
    <script
      src="https://kit.fontawesome.com/afcf20c6bc.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <!-- Navbar -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <div class="container">
            <a class="navbar-brand" href="index.html">
              <span>ProjectPulse+</span>
            </a>

            <button
              class="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navbarSupportedContent"
            >
              <span class="text-white"><i class="fa-solid fa-bars"></i></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#about">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#freelancers">Talent</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#jobs">Jobs</a>
                </li>
              </ul>
              <div class="user_option ml-3">
                <a
                  href="loginFreelancer"
                  class="btn btn-secondary-outline btn-sm"
                  >Freelancer Login</a
                >
                <a
                  href="loginCompany"
                  class="btn btn-primary-gradient btn-sm ml-2"
                  >Company Login</a
                >
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <!-- Hero Section -->
    <section class="hero_area">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <div class="detail-box">
              <h1>
                Hire the best <br />
                <span style="color: var(--secondary-color)">freelancers</span>
                for any job.
              </h1>
              <p>
                Connect with world-class talent and top-tier companies. The
                marketplace for the modern era. Secure, fast, and premium.
              </p>
              <div class="btn-box">
                <a href="loginCompany" class="btn-primary-gradient">
                  Hire Talent <i class="fa-solid fa-arrow-right ml-2"></i>
                </a>
                <a href="loginFreelancer" class="btn-secondary-outline">
                  Find Work
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="img-box">
              <!-- Placeholder for a 3D illustration or modern graphic -->
              <img
                src="../../files/images/slider-img.png"
                alt="Hero"
                class="img-fluid"
                style="filter: drop-shadow(0 0 20px rgba(99, 102, 241, 0.3))"
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Stats Section (Glassmorphism) -->
    <section class="layout_padding">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="glass-card text-center mb-4">
              <h2 style="color: var(--primary-color); font-weight: 800">
                250+
              </h2>
              <p class="mb-0">Freelancers</p>
            </div>
          </div>
          <div class="col-md-3">
            <div class="glass-card text-center mb-4">
              <h2 style="color: var(--secondary-color); font-weight: 800">
                500+
              </h2>
              <p class="mb-0">Jobs Posted</p>
            </div>
          </div>
          <div class="col-md-3">
            <div class="glass-card text-center mb-4">
              <h2 style="color: var(--primary-color); font-weight: 800">98%</h2>
              <p class="mb-0">Satisfaction</p>
            </div>
          </div>
          <div class="col-md-3">
            <div class="glass-card text-center mb-4">
              <h2 style="color: var(--secondary-color); font-weight: 800">
                24/7
              </h2>
              <p class="mb-0">Support</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Top Freelancers -->
    <section class="layout_padding" id="freelancers">
      <div class="container">
        <div class="section-heading">
          <h2>Top Rated <span>Freelancers</span></h2>
          <p>Work with the best in the industry</p>
        </div>

        <div class="row">
          <!-- Freelancer 1 -->
          <div class="col-md-4">
            <div class="glass-card freelancer-card text-center mb-4">
              <img src="../../files/images/gauravpatil.jpg" alt="Profile" />
              <h4>Gaurav Patil</h4>
              <p class="role">Full Stack Developer</p>
              <div class="skills mb-3">
                <span class="skill-tag">Java</span>
                <span class="skill-tag">Spring Boot</span>
                <span class="skill-tag">React</span>
              </div>
              <h5 class="mb-3">$35/hr</h5>
              <a href="#" class="btn btn-secondary-outline btn-sm"
                >View Profile</a
              >
            </div>
          </div>

          <!-- Freelancer 2 -->
          <div class="col-md-4">
            <div class="glass-card freelancer-card text-center mb-4">
              <img src="../../files/images/rohitwagh.jpg" alt="Profile" />
              <h4>Rohit Waghmare</h4>
              <p class="role">QA Automation Engineer</p>
              <div class="skills mb-3">
                <span class="skill-tag">Selenium</span>
                <span class="skill-tag">Java</span>
                <span class="skill-tag">Jira</span>
              </div>
              <h5 class="mb-3">$40/hr</h5>
              <a href="#" class="btn btn-secondary-outline btn-sm"
                >View Profile</a
              >
            </div>
          </div>

          <!-- Freelancer 3 -->
          <div class="col-md-4">
            <div class="glass-card freelancer-card text-center mb-4">
              <img src="../../files/images/vaibhavsir.jpg" alt="Profile" />
              <h4>Vaibhav Barde</h4>
              <p class="role">.NET Architect</p>
              <div class="skills mb-3">
                <span class="skill-tag">.NET</span>
                <span class="skill-tag">MVC</span>
                <span class="skill-tag">Azure</span>
              </div>
              <h5 class="mb-3">$50/hr</h5>
              <a href="#" class="btn btn-secondary-outline btn-sm"
                >View Profile</a
              >
            </div>
          </div>
        </div>

        <div class="text-center mt-4">
          <a href="loginFreelancer" class="btn btn-primary-gradient"
            >View All Talent</a
          >
        </div>
      </div>
    </section>

    <!-- Featured Companies/Jobs -->
    <section
      class="layout_padding"
      id="jobs"
      style="background: rgba(255, 255, 255, 0.02)"
    >
      <div class="container">
        <div class="section-heading">
          <h2>Featured <span>Opportunities</span></h2>
          <p>Join top companies hiring now</p>
        </div>

        <div class="row">
          <div class="col-md-4">
            <div class="glass-card mb-4">
              <div class="d-flex align-items-center mb-3">
                <img
                  src="../../files/images/capgemini.jpg"
                  width="50"
                  style="border-radius: 8px"
                  class="mr-3"
                />
                <div>
                  <h5 class="mb-0">Java Developer</h5>
                  <small class="text-muted">Capgemini</small>
                </div>
              </div>
              <p class="text-muted small">
                Looking for a senior Java developer with Spring Boot experience
                to lead our backend team.
              </p>
              <div
                class="d-flex justify-content-between align-items-center mt-3"
              >
                <span class="badge badge-primary">Remote</span>
                <a href="#" class="btn btn-sm btn-primary-gradient">Apply</a>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="glass-card mb-4">
              <div class="d-flex align-items-center mb-3">
                <img
                  src="../../files/images/infosys.gif"
                  width="50"
                  style="border-radius: 8px"
                  class="mr-3"
                />
                <div>
                  <h5 class="mb-0">Business Analyst</h5>
                  <small class="text-muted">Infosys</small>
                </div>
              </div>
              <p class="text-muted small">
                Need an experienced BA to bridge the gap between stakeholders
                and our dev team.
              </p>
              <div
                class="d-flex justify-content-between align-items-center mt-3"
              >
                <span class="badge badge-primary">On-site</span>
                <a href="#" class="btn btn-sm btn-primary-gradient">Apply</a>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="glass-card mb-4">
              <div class="d-flex align-items-center mb-3">
                <img
                  src="../../files/images/wipro.png"
                  width="50"
                  style="border-radius: 8px"
                  class="mr-3"
                />
                <div>
                  <h5 class="mb-0">Python AI Dev</h5>
                  <small class="text-muted">Wipro</small>
                </div>
              </div>
              <p class="text-muted small">
                Building next-gen chatbots. ML and Flask experience required.
              </p>
              <div
                class="d-flex justify-content-between align-items-center mt-3"
              >
                <span class="badge badge-primary">Hybrid</span>
                <a href="#" class="btn btn-sm btn-primary-gradient">Apply</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3 style="font-weight: 800; color: white">ProjectPulse+</h3>
            <p class="small text-muted mt-3">
              The ultimate platform for connecting top talent with premium
              opportunities. Built for the future of work.
            </p>
          </div>
          <div class="col-md-4">
            <h5 class="text-white">Quick Links</h5>
            <ul class="list-unstyled mt-3">
              <li><a href="#" class="text-muted">About Us</a></li>
              <li><a href="#" class="text-muted">Privacy Policy</a></li>
              <li><a href="#" class="text-muted">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-md-4">
            <h5 class="text-white">Connect</h5>
            <div class="footer_social mt-3">
              <a href="#"><i class="fa-brands fa-facebook"></i></a>
              <a href="#"><i class="fa-brands fa-twitter"></i></a>
              <a href="#"><i class="fa-brands fa-linkedin"></i></a>
              <a href="#"><i class="fa-brands fa-instagram"></i></a>
            </div>
          </div>
        </div>
        <div class="text-center mt-5">
          <p class="small text-muted">
            &copy; 2026 ProjectPulse+. All rights reserved.
          </p>
        </div>
      </div>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="../../files/js/bootstrap.js"></script>
  </body>
</html>
