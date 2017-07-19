/**
 * Created by dawits on 4/19/2017.
 */
package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="tbl_employee_new")
public class Employee implements Serializable {
    public Employee(){}


    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private String id;

    @Column(name="first_name")
    private String first_name;

    @Column(name="middle_name")
    private String middle_name;

    @Column(name="last_name")
    private String last_name;

    @Column(name="file_index_number")
    private String file_index_number;

    @Column(name="employee_id")
    private String employee_id;

    @Column(name="sex")
    private String sex;

    @Column(name="date_of_birth")
    private String date_of_birth;

    @Column(name="date_of_employment")
    private String date_of_employment;

    @Column(name="job_classification_id")
    private String job_classification_id;

    @Column(name="emergency_contact")
    private String emergency_contact;

    @Column(name="photo_file_name")
    private String photo_file_name;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getMiddle_name() {
        return middle_name;
    }

    public void setMiddle_name(String middle_name) {
        this.middle_name = middle_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getFile_index_number() {
        return file_index_number;
    }

    public void setFile_index_number(String file_index_number) {
        this.file_index_number = file_index_number;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getDate_of_employment() {
        return date_of_employment;
    }

    public void setDate_of_employment(String date_of_employment) {
        this.date_of_employment = date_of_employment;
    }

    public String getJob_classification_id() {
        return job_classification_id;
    }

    public void setJob_classification_id(String job_classification_id) {
        this.job_classification_id = job_classification_id;
    }

    public String getEmergency_contact() {
        return emergency_contact;
    }

    public void setEmergency_contact(String emergency_contact) {
        this.emergency_contact = emergency_contact;
    }

    public String getPhoto_file_name() {
        return photo_file_name;
    }

    public void setPhoto_file_name(String photo_file_name) {
        this.photo_file_name = photo_file_name;
    }
}
