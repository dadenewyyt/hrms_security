package com.dashen.hrms.services;

import com.dashen.hrms.model.Employee;
import com.dashen.hrms.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dan16 on 4/20/17.
 */
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeRepository empRepository;

    @Override
    public void saveEmployeePersonal(Employee employee) {
        empRepository.save(employee);
    }

    @Override
    public Employee prepareEmployeeDate(ModelAndView modelAndView) {
        Employee emp = new Employee();
        return null;
    }
}
