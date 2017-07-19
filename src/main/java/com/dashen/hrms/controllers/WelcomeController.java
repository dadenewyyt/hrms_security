/*
package com.dashen.hrms.controllers;


import com.dashen.hrms.model.Employee;
import com.dashen.hrms.repositories.ClickRepository;
import com.dashen.hrms.repositories.ConsumerRepository;
import com.dashen.hrms.services.EmployeeServiceImpl;
import com.dashen.hrms.services.SearchServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/homei")
public class WelcomeController {

    private static final Logger logger = Logger.getLogger(WelcomeController.class);

    @Autowired
    ConsumerRepository consumerRepository;

    @Autowired
    ClickRepository clickRepository;

    @Autowired
    SearchServiceImpl searchService;

    @Autowired
    EmployeeServiceImpl employeeService;

    @RequestMapping("/welcome")
    public String startPage(ModelMap model) {

        System.out.println("Now KendoUi controller");

        return "kendo.html";
    }

    @RequestMapping("/demo")
    public String demo(ModelMap model) {
        model.addAttribute("message", "Welcome to PPC Backend Module");
        model.addAttribute("version", "1.0.0");
        model.addAttribute("text", "coming soon!");
        return "dash";
    }


    @RequestMapping(value = "/employeeSave" ,method = RequestMethod.POST)
    public String employeeSave(
            @RequestParam(value="fname", required=false) String fname,
            @RequestParam(value="lname", required=false) String lname,
            @RequestParam(value="mname", required=false) String mname,
            @RequestParam(value="fileIndexNumber", required=false) String fileIndexNumber,
            @RequestParam(value="hr_employeeId", required=false) String hr_employeeId,
            @RequestParam(value="radioGroup", required=false) String sex,
            @RequestParam(value="dateOfBirth", required=false) String dateOfBirth,
            @RequestParam(value="dateOfEmployment", required=false) String dateOfEmployment,
            @RequestParam(value="jobClassification", required=false) String jobClassification,
            @RequestParam(value="EmergencyContact", required=false) String emergencyContact,final RedirectAttributes redirectAttributes) {

        System.out.println("Found by last name Adenew , the consumer is"+ fname);

        redirectAttributes.addFlashAttribute("css", "success");
        redirectAttributes.addFlashAttribute("msg", "Employee is saved!");

        Employee emp = new Employee();
        emp.setFirst_name(fname);
        emp.setLast_name(lname);
        emp.setMiddle_name(mname);
        emp.setSex(sex);
        emp.setPhoto_file_name("DB_EMP_1_IMG.JPG");
        emp.setFile_index_number(fileIndexNumber);
        emp.setDate_of_birth(dateOfBirth);
        emp.setDate_of_employment(dateOfEmployment);
        emp.setEmployee_id(hr_employeeId);
        emp.setEmergency_contact(emergencyContact);
        emp.setJob_classification_id("DB_CLA_1");

        employeeService.saveEmployeePersonal(emp);

        return "employeepage";
    }
}
*/
