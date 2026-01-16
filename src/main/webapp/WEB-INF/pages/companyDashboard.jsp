<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Company Dashboard | ProjectPulse+</title>
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
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg custom_nav-container">
      <div class="container">
        <a class="navbar-brand" href="#">
          <span>ProjectPulse+</span>
        </a>
        <div class="ml-auto">
          <span class="text-white mr-3"
            >Welcome, <b>${company.companyName}</b></span
          >
          <a href="logoutCompany" class="btn btn-secondary-outline btn-sm"
            >Logout</a
          >
        </div>
      </div>
    </nav>

    <div class="container mt-5">
      <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-white">Your Projects</h2>
        <a href="postJob" class="btn btn-primary-gradient"
          ><i class="fa fa-plus-circle"></i> Post New Job</a
        >
      </div>

      <div class="row">
        <c:forEach var="p" items="${projects}">
          <div class="col-md-6 mb-4">
            <div class="glass-card h-100">
              <div class="d-flex justify-content-between">
                <h4 class="text-white">${p.title}</h4>
                <span class="badge badge-success p-2">${p.status}</span>
              </div>
              <p class="text-muted mt-2">${p.description}</p>
              <div
                class="mt-3 d-flex justify-content-between align-items-center"
              >
                <h5 class="text-secondary font-weight-bold">$${p.budget}</h5>
                <a
                  href="viewProposals?projectId=${p.id}"
                  class="btn btn-secondary-outline btn-sm"
                >
                  View Proposals
                </a>
              </div>
              <small class="text-muted mt-2 d-block"
                >Posted on: ${p.createdAt}</small
              >
            </div>
          </div>
        </c:forEach>

        <c:if test="${empty projects}">
          <div class="col-12 text-center text-muted mt-5">
            <h4>No active projects found.</h4>
            <p>Post a job to get started!</p>
          </div>
        </c:if>
      </div>
    </div>
  </body>
</html>
