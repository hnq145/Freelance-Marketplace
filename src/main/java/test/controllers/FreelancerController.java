package test.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import test.beans.Freelancer;
import test.dao.ProjectDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class FreelancerController {

    @Autowired
    ProjectDao dao;

    @GetMapping("/registerFreelancer")
    public String registerPage(Model m) {
        m.addAttribute("command", new Freelancer());
        return "registerFreelancer";
    }

    @PostMapping("/processRegisterFreelancer")
    public String processRegister(@ModelAttribute("freelancer") Freelancer freelancer) {
        dao.saveFreelancer(freelancer);
        return "redirect:/loginFreelancer";
    }

    @GetMapping("/loginFreelancer")
    public String loginPage() {
        return "loginFreelancer";
    }

    // Alias for old links if needed, though we will fix index.jsp
    @GetMapping("/loginf")
    public String loginAlias() {
        return "redirect:/loginFreelancer";
    }

    @PostMapping("/processLoginFreelancer")
    public String processLogin(@RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpSession session, Model m) {
        Freelancer f = dao.getFreelancerByLogin(email, password);
        if (f != null) {
            session.setAttribute("freelancer", f);
            return "redirect:/freelancerDashboard";
        } else {
            m.addAttribute("error", "Invalid Email or Password");
            return "loginFreelancer";
        }
    }

    @GetMapping("/freelancerDashboard")
    public String showDashboard(HttpSession session, Model m) {
        Freelancer f = (Freelancer) session.getAttribute("freelancer");
        if (f == null)
            return "redirect:/loginFreelancer";

        m.addAttribute("projects", dao.getAllOpenProjects());
        return "freelancerDashboard";
    }

    @GetMapping("/applyToJob")
    public String showApplyPage(@RequestParam("projectId") int projectId, HttpSession session, Model m) {
        Freelancer f = (Freelancer) session.getAttribute("freelancer");
        if (f == null)
            return "redirect:/loginFreelancer";

        test.beans.Project p = dao.getProjectById(projectId);
        m.addAttribute("project", p);
        m.addAttribute("command", new test.beans.Proposal());
        return "applyToJob";
    }

    @PostMapping("/processApplyJob")
    public String processApplyJob(@ModelAttribute("proposal") test.beans.Proposal proposal, HttpSession session) {
        Freelancer f = (Freelancer) session.getAttribute("freelancer");
        if (f == null)
            return "redirect:/loginFreelancer";

        proposal.setFreelancerId(f.getId());
        dao.saveProposal(proposal);
        return "redirect:/freelancerDashboard";
    }

    @GetMapping("/logoutFreelancer")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
