package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_category")
public class Category implements Serializable  {

    public Category() {
    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="cname")
    private String cname;

    public Category(String cname) {
        this.cname = cname;
    }

    public String getCname() {

        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
