package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_keyword")
public class Keyword implements Serializable {

    public Keyword() {
    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="kname")
    private String kname;

    @Column(name="price")
    private Double price;

    @ManyToOne
    private Category catgeory;


    public Keyword(String kname, Double price, Set<Ad> adset, Category catgeory) {
        this.kname = kname;
        this.price = price;
        this.catgeory = catgeory;
    }

    public Category getCatgeory() {
        return catgeory;
    }

    public void setCatgeory(Category catgeory) {
        this.catgeory = catgeory;
    }

    public Long getId() {

        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
