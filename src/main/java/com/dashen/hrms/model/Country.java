package com.dashen.hrms.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name ="ppc_country")
public class Country implements Serializable {

    public Country() {

    }

    private static final long serialVersionUID = 8670372229906232622L;

    @Id
    @Column(name="id")
    private String code;

    private String name;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
