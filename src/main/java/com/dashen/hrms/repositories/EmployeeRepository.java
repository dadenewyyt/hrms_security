package com.dashen.hrms.repositories;

import com.dashen.hrms.model.Employee;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dan16 on 4/20/17.
 */
public interface EmployeeRepository extends CrudRepository<Employee, String> {


}
