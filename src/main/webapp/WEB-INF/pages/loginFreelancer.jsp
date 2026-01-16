<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Freelancer Login | ProjectPulse+</title>
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
        background-image: radial-gradient(
            circle at top left,
            #312e81 0%,
            transparent 40%
          ),
          radial-gradient(circle at bottom right, #4338ca 0%, transparent 40%);
        background-color: var(--dark-bg);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .login-card {
        width: 100%;
        max-width: 450px;
        padding: 40px;
      }
    </style>
  </head>
  <body>
    <div class="glass-panel login-card">
      <div class="text-center mb-5">
        <h2
          style="
            font-weight: 800;
            background: var(--gradient-main);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
          "
        >
          ProjectPulse+
        </h2>
        <h5 class="text-white mt-2">Freelancer Portal</h5>
      </div>

      <% String error = (String) request.getAttribute("error"); if(error !=
      null) { %>
      <div class="alert alert-danger" role="alert"><%= error %></div>
      <% } %>

      <form action="processLoginFreelancer" method="post">
        <div class="form-group">
          <label class="text-muted">Email Address</label>
          <input
            type="email"
            name="email"
            class="form-control"
            style="
              background: rgba(255, 255, 255, 0.05);
              border: 1px solid rgba(255, 255, 255, 0.1);
              color: white;
            "
            required
          />
        </div>

        <div class="form-group">
          <label class="text-muted">Password</label>
          <input
            type="password"
            name="password"
            class="form-control"
            style="
              background: rgba(255, 255, 255, 0.05);
              border: 1px solid rgba(255, 255, 255, 0.1);
              color: white;
            "
            required
          />
        </div>

        <button type="submit" class="btn btn-primary-gradient btn-block mt-4">
          Login to Find Work
        </button>

        <div class="text-center mt-3">
          <a href="registerFreelancer" class="small text-muted"
            >New here? Join as a Freelancer</a
          >
        </div>
        <div class="text-center mt-2">
          <a href="/SpringMVCPersonal_Project" class="small text-muted"
            ><i class="fa fa-arrow-left"></i> Back to Home</a
          >
        </div>
      </form>
    </div>
  </body>
</html>
