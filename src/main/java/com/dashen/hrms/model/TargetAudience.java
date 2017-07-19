package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_target_audience")
public class TargetAudience implements Serializable {

    public TargetAudience() {

    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="isallTerritories")
    private boolean isallTerritories;

    @Column(name="isallCountry")
    private boolean isallCountry;

    @Column(name="isallStates")
    private boolean isallStates;

    @OneToOne(targetEntity = Country.class)
    private Country country;

    public TargetAudience(boolean isallTerritories, Country country) {
        this.isallTerritories = isallTerritories;
        this.country = country;
    }

    public boolean isallTerritories() {
        return isallTerritories;
    }

    public void setIsallTerritories(boolean isallTerritories) {
        this.isallTerritories = isallTerritories;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public boolean isallCountry() {
        return isallCountry;
    }

    public void setIsallCountry(boolean isallCountry) {
        this.isallCountry = isallCountry;
    }

    public boolean isallStates() {
        return isallStates;
    }

    public void setIsallStates(boolean isallStates) {
        this.isallStates = isallStates;
    }
}


