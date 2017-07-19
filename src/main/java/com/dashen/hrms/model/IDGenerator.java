/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashen.hrms.model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;
import org.springframework.stereotype.Component;

/**
 *
 * @author Daniel Adenew
 */
@Component
public class IDGenerator implements IdentifierGenerator {

    @Override
    public Serializable generate(SessionImplementor ssci, Object o) throws HibernateException {

        //set prefix and query
        String prefix = "";
        String type = o.getClass().getName();
        String query = "";
        if (type.equalsIgnoreCase("com.dashen.hrms.Employee")) {

            prefix = "EMP_";
            query = "SELECT Employee_id_sequence.nextval from dual";
        }
        else if (type.equalsIgnoreCase("com.dashen.hrms.EmployeeTmp")) {

            prefix = "EMP_TMP_";
            query = "SELECT Employee_Tmp_id_sequence.nextval from dual";
        }
        else if (type.equalsIgnoreCase("com.dashen.hrms.Experience")) {

            prefix = "EXP_";
            query = "SELECT experience_id_sequence.nextval from dual";
        }
        else
        {
            return null;
        }
        Connection connection = ssci.connection();

        try {
            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                int nextVal = rs.getInt(1);
                String generatedId = prefix + new Integer(nextVal).toString();
                System.out.println("Generated Id: " + generatedId);
                return generatedId;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
