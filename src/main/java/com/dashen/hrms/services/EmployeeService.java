package com.dashen.hrms.services;

import com.dashen.hrms.model.Employee;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dan16 on 4/20/17.
 */
public interface EmployeeService {
    public void  saveEmployeePersonal(Employee employee);
    public Employee  prepareEmployeeDate(ModelAndView modelAndView);
}
