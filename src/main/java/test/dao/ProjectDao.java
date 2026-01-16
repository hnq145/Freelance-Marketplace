package test.dao;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import test.beans.Company;
import test.beans.Freelancer;
import test.beans.Project;
import test.beans.Proposal;

public class ProjectDao {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // --- Company Methods ---
    public int saveCompany(Company c) {
        String sql = "INSERT INTO companies (company_name, email, password_hash, description, website) VALUES (?, ?, ?, ?, ?)";
        return template.update(sql, c.getCompanyName(), c.getEmail(), c.getPassword(), c.getDescription(),
                c.getWebsite());
    }

    public Company getCompanyByLogin(String email, String password) {
        String sql = "SELECT * FROM companies WHERE email = ? AND password_hash = ?";
        try {
            return template.queryForObject(sql, (rs, rowNum) -> {
                Company c = new Company();
                c.setId(rs.getInt("id"));
                c.setCompanyName(rs.getString("company_name"));
                c.setEmail(rs.getString("email"));
                c.setPassword(rs.getString("password_hash"));
                c.setDescription(rs.getString("description"));
                c.setWebsite(rs.getString("website"));
                c.setCreatedAt(rs.getTimestamp("created_at"));
                return c;
            }, email, password);
        } catch (Exception e) {
            return null;
        }
    }

    // --- Freelancer Methods ---
    public int saveFreelancer(Freelancer f) {
        String sql = "INSERT INTO freelancers (full_name, email, password_hash, skills, bio, hourly_rate) VALUES (?, ?, ?, ?, ?, ?)";
        return template.update(sql, f.getFullName(), f.getEmail(), f.getPassword(), f.getSkills(), f.getBio(),
                f.getHourlyRate());
    }

    public Freelancer getFreelancerByLogin(String email, String password) {
        String sql = "SELECT * FROM freelancers WHERE email = ? AND password_hash = ?";
        try {
            return template.queryForObject(sql, (rs, rowNum) -> {
                Freelancer f = new Freelancer();
                f.setId(rs.getInt("id"));
                f.setFullName(rs.getString("full_name"));
                f.setEmail(rs.getString("email"));
                f.setPassword(rs.getString("password_hash"));
                f.setSkills(rs.getString("skills"));
                f.setBio(rs.getString("bio"));
                f.setHourlyRate(rs.getDouble("hourly_rate"));
                f.setCreatedAt(rs.getTimestamp("created_at"));
                return f;
            }, email, password);
        } catch (Exception e) {
            return null;
        }
    }

    // --- Project Methods ---
    public int saveProject(Project p) {
        String sql = "INSERT INTO projects (company_id, title, description, budget, status) VALUES (?, ?, ?, ?, 'OPEN')";
        return template.update(sql, p.getCompanyId(), p.getTitle(), p.getDescription(), p.getBudget());
    }

    public List<Project> getProjectsByCompanyId(int companyId) {
        String sql = "SELECT * FROM projects WHERE company_id = ? ORDER BY created_at DESC";
        return template.query(sql, (rs, rowNum) -> {
            Project p = new Project();
            p.setId(rs.getInt("id"));
            p.setCompanyId(rs.getInt("company_id"));
            p.setTitle(rs.getString("title"));
            p.setDescription(rs.getString("description"));
            p.setBudget(rs.getDouble("budget"));
            p.setStatus(rs.getString("status"));
            p.setCreatedAt(rs.getTimestamp("created_at"));
            return p;
        }, companyId);
    }

    public List<Project> getAllOpenProjects() {
        String sql = "SELECT * FROM projects WHERE status = 'OPEN' ORDER BY created_at DESC";
        return template.query(sql, (rs, rowNum) -> {
            Project p = new Project();
            p.setId(rs.getInt("id"));
            p.setCompanyId(rs.getInt("company_id"));
            p.setTitle(rs.getString("title"));
            p.setDescription(rs.getString("description"));
            p.setBudget(rs.getDouble("budget"));
            p.setStatus(rs.getString("status"));
            p.setCreatedAt(rs.getTimestamp("created_at"));
            return p;
        });
    }

    public Project getProjectById(int id) {
        String sql = "SELECT * FROM projects WHERE id = ?";
        try {
            return template.queryForObject(sql, (rs, rowNum) -> {
                Project p = new Project();
                p.setId(rs.getInt("id"));
                p.setCompanyId(rs.getInt("company_id"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                p.setBudget(rs.getDouble("budget"));
                p.setStatus(rs.getString("status"));
                p.setCreatedAt(rs.getTimestamp("created_at"));
                return p;
            }, id);
        } catch (Exception e) {
            return null;
        }
    }

    // --- Proposal Methods ---
    public int saveProposal(Proposal p) {
        String sql = "INSERT INTO proposals (project_id, freelancer_id, bid_amount, cover_letter, status) VALUES (?, ?, ?, ?, 'PENDING')";
        return template.update(sql, p.getProjectId(), p.getFreelancerId(), p.getBidAmount(), p.getCoverLetter());
    }

    public List<Proposal> getProposalsByProjectId(int projectId) {
        String sql = "SELECT p.*, f.full_name as freelancer_name FROM proposals p " +
                "JOIN freelancers f ON p.freelancer_id = f.id " +
                "WHERE p.project_id = ? ORDER BY p.created_at DESC";
        return template.query(sql, (rs, rowNum) -> {
            Proposal prop = new Proposal();
            prop.setId(rs.getInt("id"));
            prop.setProjectId(rs.getInt("project_id"));
            prop.setFreelancerId(rs.getInt("freelancer_id"));
            prop.setBidAmount(rs.getDouble("bid_amount"));
            prop.setCoverLetter(rs.getString("cover_letter"));
            prop.setStatus(rs.getString("status"));
            prop.setCreatedAt(rs.getTimestamp("created_at"));
            prop.setFreelancerName(rs.getString("freelancer_name"));
            return prop;
        }, projectId);
    }
}
