package spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView () {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetail () {
        return "ask-emp-detail-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails () {
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails (HttpServletRequest request, Model model) {
        String empName = request.getParameter("employeeName");
        empName = "Mister " + empName;
        model.addAttribute("attributeName", empName);
        model.addAttribute("description", " - director of SportPalace.");
        return "show-emp-details-view";
    }
}
