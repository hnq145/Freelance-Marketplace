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
    <title>Register Company | ProjectPulse+</title>
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
        border-color: var(--primary-color);
        color: white;
        box-shadow: none;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="glass-panel register-card">
        <div class="text-center mb-4">
          <h2 style="font-weight: 800; color: white">Join as a Company</h2>
          <p class="text-muted">Find the best talent for your projects</p>
        </div>

        <form:form
          action="processRegisterCompany"
          method="post"
          modelAttribute="command"
        >
          <div class="form-group">
            <label class="text-white">Company Name</label>
            <form:input
              path="companyName"
              class="form-control"
              required="true"
            />
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
            <label class="text-white">Website URL</label>
            <form:input
              path="website"
              class="form-control"
              placeholder="https://example.com"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Description</label>
            <form:textarea
              path="description"
              class="form-control"
              rows="3"
              placeholder="Tell us about your company..."
            />
          </div>

          <button type="submit" class="btn btn-primary-gradient btn-block mt-4">
            Create Account
          </button>

          <div class="text-center mt-3">
            <a href="loginCompany" class="small text-muted"
              >Already have an account? Login</a
            >
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>
