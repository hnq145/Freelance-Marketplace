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
    <title>Apply to Job | ProjectPulse+</title>
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
        padding-top: 80px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="glass-panel p-5 mx-auto" style="max-width: 700px">
        <div class="mb-4 border-bottom border-secondary pb-3">
          <h6 class="text-secondary">Applying for:</h6>
          <h2 class="text-white">${project.title}</h2>
          <div class="d-flex justify-content-between text-muted mt-2">
            <span>Budget: $${project.budget}</span>
            <span>Posted: ${project.createdAt}</span>
          </div>
          <p class="text-muted mt-3">${project.description}</p>
        </div>

        <h4 class="text-white mb-3">Your Proposal</h4>
        <form:form
          action="processApplyJob"
          method="post"
          modelAttribute="command"
        >
          <form:hidden path="projectId" value="${project.id}" />

          <div class="form-group">
            <label class="text-white">Your Bid Amount ($)</label>
            <form:input
              path="bidAmount"
              type="number"
              step="0.01"
              class="form-control"
              style="
                background: rgba(255, 255, 255, 0.05);
                color: white;
                border: 1px solid rgba(255, 255, 255, 0.1);
              "
              required="true"
            />
          </div>

          <div class="form-group">
            <label class="text-white">Cover Letter</label>
            <form:textarea
              path="coverLetter"
              class="form-control"
              rows="5"
              style="
                background: rgba(255, 255, 255, 0.05);
                color: white;
                border: 1px solid rgba(255, 255, 255, 0.1);
              "
              placeholder="Why are you the best fit for this job?"
              required="true"
            />
          </div>

          <div class="d-flex gap-2 mt-4">
            <button type="submit" class="btn btn-primary-gradient mr-3">
              Submit Proposal
            </button>
            <a href="freelancerDashboard" class="btn btn-secondary-outline"
              >Cancel</a
            >
          </div>
        </form:form>
      </div>
    </div>
  </body>
</html>
