package test.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import test.beans.Company;
import test.beans.Project;
import test.dao.ProjectDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class CompanyController {

    @Autowired
    ProjectDao dao;

    @GetMapping("/")
    public String showHomePage() {
        return "index";
    }

    @GetMapping("/registerCompany")
    public String registerPage(Model m) {
        m.addAttribute("command", new Company());
        return "registerCompany";
    }

    @PostMapping("/processRegisterCompany")
    public String processRegister(@ModelAttribute("company") Company company) {
        dao.saveCompany(company);
        return "redirect:/loginCompany";
    }

    @GetMapping("/loginCompany")
    public String loginCompany() {
        return "loginCompany";
    }

    @PostMapping("/processLoginCompany")
    public String processLogin(@RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpSession session, Model m) {
        Company c = dao.getCompanyByLogin(email, password);
        if (c != null) {
            session.setAttribute("company", c);
            return "redirect:/companyDashboard";
        } else {
            m.addAttribute("error", "Invalid Email or Password");
            return "loginCompany";
        }
    }

    @GetMapping("/companyDashboard")
    public String showDashboard(HttpSession session, Model m) {
        Company c = (Company) session.getAttribute("company");
        if (c == null)
            return "redirect:/loginCompany";

        List<Project> projects = dao.getProjectsByCompanyId(c.getId());
        m.addAttribute("projects", projects);
        return "companyDashboard";
    }

    @GetMapping("/postJob")
    public String showPostJob(HttpSession session, Model m) {
        Company c = (Company) session.getAttribute("company");
        if (c == null)
            return "redirect:/loginCompany";

        m.addAttribute("command", new Project());
        return "postJob";
    }

    @PostMapping("/processPostJob")
    public String processPostJob(@ModelAttribute("project") Project project, HttpSession session) {
        Company c = (Company) session.getAttribute("company");
        if (c == null)
            return "redirect:/loginCompany";

        project.setCompanyId(c.getId()); // Helper to link project to logged-in company
        dao.saveProject(project);
        return "redirect:/companyDashboard";
    }

    @GetMapping("/viewProposals")
    public String viewProposals(@RequestParam("projectId") int projectId, HttpSession session, Model m) {
        Company c = (Company) session.getAttribute("company");
        if (c == null)
            return "redirect:/loginCompany";

        // Security check: Ensure company owns the project
        // In a real app, we'd fetch project and check companyId.
        // For now trusting the UI flow but let's be safe-ish
        test.beans.Project p = dao.getProjectById(projectId);
        if (p == null || p.getCompanyId() != c.getId()) {
            return "redirect:/companyDashboard";
        }

        m.addAttribute("project", p);
        m.addAttribute("proposals", dao.getProposalsByProjectId(projectId));
        return "viewProposals";
    }

    @GetMapping("/logoutCompany")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
