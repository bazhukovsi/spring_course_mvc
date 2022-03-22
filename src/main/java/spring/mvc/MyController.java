package spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetail(Model model) {
//        Employee employee = new Employee();
//        employee.setName("name");
//        employee.setSurname("surname");
//        employee.setSalary(0);
        model.addAttribute("employee", new Employee());
        return "ask-emp-detail-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails () {
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails (HttpServletRequest request, Model model) {
//        String empName = request.getParameter("employeeName");
//        empName = "Mister " + empName;
//        model.addAttribute("attributeName", empName);
//        model.addAttribute("description", " - director of SportPalace.");
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model) {
//        empName = "Mister " + empName;
//        model.addAttribute("attributeName", empName);
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            System.out.println(bindingResult.hasErrors());
            return "ask-emp-detail-view";
        } else {
            return "show-emp-details-view";
        }
    }
}
