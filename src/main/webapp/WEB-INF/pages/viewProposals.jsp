<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>View Proposals | ProjectPulse+</title>
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
    <nav class="navbar navbar-expand-lg custom_nav-container">
      <div class="container">
        <a class="navbar-brand" href="#"><span>ProjectPulse+</span></a>
        <div class="ml-auto">
          <a href="companyDashboard" class="btn btn-secondary-outline btn-sm"
            >Back to Dashboard</a
          >
        </div>
      </div>
    </nav>

    <div class="container mt-5">
      <div class="mb-5">
        <h6 class="text-secondary">Proposals for Project:</h6>
        <h2 class="text-white">${project.title}</h2>
      </div>

      <div class="row">
        <c:forEach var="prop" items="${proposals}">
          <div class="col-12 mb-3">
            <div class="glass-card">
              <div class="d-flex justify-content-between align-items-start">
                <div>
                  <h4 class="text-white mb-1">${prop.freelancerName}</h4>
                  <small class="text-muted"
                    >Applied on: ${prop.createdAt}</small
                  >
                </div>
                <h3 class="text-primary font-weight-bold">
                  $${prop.bidAmount}
                </h3>
              </div>
              <div
                class="mt-3 p-3"
                style="background: rgba(0, 0, 0, 0.2); border-radius: 8px"
              >
                <p class="mb-0 text-light" style="font-style: italic">
                  "${prop.coverLetter}"
                </p>
              </div>
              <div class="mt-3 text-right">
                <span class="badge badge-warning p-2"
                  >Status: ${prop.status}</span
                >
                <button class="btn btn-success btn-sm ml-2">Hire</button>
              </div>
            </div>
          </div>
        </c:forEach>

        <c:if test="${empty proposals}">
          <div class="col-12 text-center text-muted mt-5">
            <h4>No proposals yet.</h4>
            <p>Wait for freelancers to apply.</p>
          </div>
        </c:if>
      </div>
    </div>
  </body>
</html>
