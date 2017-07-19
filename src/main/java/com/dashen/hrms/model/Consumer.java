package com.dashen.hrms.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name ="ppc_consumer")
public class Consumer implements Serializable {

    private static final long serialVersionUID = 8670372229906232622L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    private String firstName;
    private String lastName;

    protected Consumer() {}

    public Consumer(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    @Override
    public String toString() {
        return String.format(
                "Consumer[id=%d, firstName='%s', lastName='%s']",
                id, firstName, lastName);
    }


}
