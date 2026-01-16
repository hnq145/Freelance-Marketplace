<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Register Freelancer | ProjectPulse+</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=Poppins:wght@400;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../files/css/bootstrap.css"
    />
    <link href="../../files/css/style.css" rel="stylesheet" />
    <style>
      body {
        background-color: var(--dark-bg);
        padding: 50px 0;
        min-height: 100vh;
      }
      .register-card {
        width: 100%;
        max-width: 600px;
        padding: 40px;
        margin: 0 auto;
      }
      .form-control {
        background: rgba(255, 255, 255, 0.05);
        border: 1px solid rgba(255, 255, 255, 0.1);
        color: white;
      }
      .form-control:focus {
        background: rgba(255, 255, 255, 0.08);
        border-color: var(--secondary-color);
        color: white;
        box-shadow: none;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="glass-panel register-card">
        <div class="text-center mb-4">
          <h2 style="font-weight: 800; color: white">Join as a Freelancer</h2>
          <p class="text-muted">Turn your skills into income</p>
        </div>

        <form:form
          action="processRegisterFreelancer"
          method="post"
          modelAttribute="command"
        >
          <div class="form-group">
            <label class="text-white">Full Name</label>
            <form:input path="fullName" class="form-control" required="true" />
          </div>

          <div class="form-group">
            <label class="text-white">Email Address</label>
            <form:input
              path="email"
              type="email"
              class="form-control"
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Password</label>
            <form:input
              path="password"
              type="password"
              class="form-control"
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Hourly Rate ($)</label>
            <form:input
              path="hourlyRate"
              type="number"
              step="0.01"
              class="form-control"
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Skills (e.g. Java, Python, React)</label>
            <form:input
              path="skills"
              class="form-control"
              placeholder="Java, SQL, Spring Boot..."
            />
          </div>

          <div class="form-group">
            <label class="text-white">Bio</label>
            <form:textarea
              path="bio"
              class="form-control"
              rows="3"
              placeholder="Tell potential clients about yourself..."
            />
          </div>

          <button
            type="submit"
            class="btn btn-primary-gradient btn-block mt-4"
            style="background: var(--secondary-color)"
          >
            Create Portfolio
          </button>

          <div class="text-center mt-3">
            <a href="loginFreelancer" class="small text-muted"
              >Already have an account? Login</a
            >
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>
