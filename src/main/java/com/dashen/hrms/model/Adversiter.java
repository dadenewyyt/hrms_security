package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_adverister")
public class Adversiter implements Serializable {

    public Adversiter() {

    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="first_name")
    private String first_name;

    @Column(name="last_name")
    private String last_name;

    @Column(name="gender")
    private String gender;

    @OneToMany
    @JoinColumn(name="advertiser_id", referencedColumnName="id")
    private Set<Ad> ads;


    public Adversiter(String first_name, String last_name, String gender, Set<Ad> adList) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.gender = gender;
        this.ads = adList;
    }

    public Set<Ad> getAdList() {
        return ads;
    }

    public void setAdList(Set<Ad> adList) {
        this.ads = adList;
    }

    public String getFirst_name() {

        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

}
