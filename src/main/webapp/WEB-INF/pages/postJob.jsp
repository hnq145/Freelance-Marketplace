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
    <title>Post a Job | ProjectPulse+</title>
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
      .job-card {
        width: 100%;
        max-width: 700px;
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
      <div class="glass-panel job-card">
        <div class="d-flex justify-content-between align-items-center mb-4">
          <h2 style="font-weight: 800; color: white">Post a New Job</h2>
          <a href="companyDashboard" class="btn btn-secondary-outline btn-sm"
            >Cancel</a
          >
        </div>

        <form:form
          action="processPostJob"
          method="post"
          modelAttribute="command"
        >
          <div class="form-group">
            <label class="text-white">Job Title</label>
            <form:input
              path="title"
              class="form-control"
              placeholder="e.g. Senior Java Developer"
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Budget ($)</label>
            <form:input
              path="budget"
              type="number"
              step="0.01"
              class="form-control"
              placeholder="5000.00"
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Job Description</label>
            <form:textarea
              path="description"
              class="form-control"
              rows="8"
              placeholder="Describe the project details, requirements, and deliverables..."
              required="true"
            />
          </div>

          <button type="submit" class="btn btn-primary-gradient btn-lg mt-3">
            Post Job Now
          </button>
        </form:form>
      </div>
    </div>
  </body>
</html>
