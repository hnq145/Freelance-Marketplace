# ProjectPulse+ (Freelance Marketplace)

ProjectPulse+ is a modern Freelance Marketplace connecting companies with top-tier talent. This application is built using Java Spring MVC, JDBC, and PostgreSQL.

## Prerequisites

1.  **Java Development Kit (JDK)**: Version 17 or higher recommended (Spring 6).
2.  **Apache Maven**: For dependency management.
3.  **PostgreSQL**: Relational database.
4.  **Tomcat Server**: Version 10.1.x or higher (Required for Jakarta EE 10 / Servlet 6.0 support). Note: `jakarta.servlet-api` 6.0.0 is used.

## Setup Instructions

### 1. Database Setup

1.  Ensure your PostgreSQL server is running.
2.  Create a new database named `Project_15`.
3.  Execute the schema script located at `src/main/resources/sql/schema.sql`. This will create the necessary tables (`companies`, `freelancers`, `projects`, `proposals`).
4.  **Important**: Check the database connection settings in `src/main/webapp/WEB-INF/spring-servlet.xml`. By default, it expects:
    - Username: `postgres`
    - Password: `Grp4545@@`
    - If your password differs, update line 22 of that file.

### 2. Running in IntelliJ IDEA (Recommended)

This project contains `.smarttomcat` configuration, suggesting it is optimized for the Smart Tomcat plugin, but standard Tomcat configuration works too.

1.  Open the project in IntelliJ IDEA.
2.  Go to **Run -> Edit Configurations**.
3.  Add a new **Tomcat Server -> Local** configuration.
4.  In the **Deployment** tab, add the artifact: `Project_15:war exploded`.
5.  In the **Server** tab, ensure the URL is `http://localhost:8080/Project_15/`.
6.  Click **Apply** and **Run**.

### 3. Usage

1.  **Landing Page**: Navigate to `http://localhost:8080/Project_15/`.
2.  **Register**:
    - **Companies**: Sign up to post jobs.
    - **Freelancers**: Sign up to find work.
3.  **Workflow**:
    - Company posts a job.
    - Freelancer logs in, views the dashboard, and applies to the job.
    - Company logs in, views their dashboard, clicks "View Proposals" to see applicants.

## Project Structure

- `src/main/java/test/controllers`: Handles web requests (Company, Freelancer, Login).
- `src/main/java/test/dao`: Database interactions (ProjectDao).
- `src/main/java/test/beans`: Data models (Company, Freelancer, Project, Proposal).
- `src/main/webapp/WEB-INF/pages`: JSP views (Frontend).
- `src/main/webapp/files/css`: Modern styling (Glassmorphism design).
