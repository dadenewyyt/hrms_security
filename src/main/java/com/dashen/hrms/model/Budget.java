package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_budget")
public class Budget implements Serializable {

    public Budget() {

    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="per_week_budget")
    private Double per_week_budget;

    @Column(name="per_day_budget")
    private Double per_day_budget;


    public Budget(Double per_week_budget, Double per_day_budget) {
        this.per_week_budget = per_week_budget;
        this.per_day_budget = per_day_budget;
    }

    public Double getPer_week_budget() {

        return per_week_budget;
    }

    public void setPer_week_budget(Double per_week_budget) {
        this.per_week_budget = per_week_budget;
    }

    public Double getPer_day_budget() {
        return per_day_budget;
    }

    public void setPer_day_budget(Double per_day_budget) {
        this.per_day_budget = per_day_budget;
    }
}
