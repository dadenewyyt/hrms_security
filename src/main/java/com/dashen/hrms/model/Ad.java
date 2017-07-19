package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="ppc_ad")
public class Ad implements Serializable {

    public Ad() {
    }

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private Long id;

    @Column(name="ad_title")
    private String ad_title;

    @Column(name="ad_text")
    private String ad_text;

    private String address;

    private String website;


    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "ppc_ad_keyword", joinColumns = {
            @JoinColumn(name = "ad_id", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "keyword_id",
                    nullable = false, updatable = false) })
    private Set<Keyword> Keywordset = new HashSet<Keyword>(0);

    @OneToOne(optional=false)
    private Budget ad_budget;

    @OneToOne(optional=false)
    private TargetAudience targetAudience;

    public Ad(String ad_title, String ad_text, String address, String website, Set<Keyword> keywordset, Category ad_category, Budget ad_budget, TargetAudience tragTargetAudience) {
        this.ad_title = ad_title;
        this.ad_text = ad_text;
        this.address = address;
        this.website = website;
        Keywordset = keywordset;
        this.ad_budget = ad_budget;
        this.targetAudience = tragTargetAudience;

    }

    public TargetAudience getTragTargetAudience() {
        return targetAudience;
    }

    public void setTragTargetAudience(TargetAudience tragTargetAudience) {
        this.targetAudience = tragTargetAudience;
    }

    public String getAd_title() {
        return ad_title;
    }

    public void setAd_title(String ad_title) {
        this.ad_title = ad_title;
    }

    public String getAd_text() {
        return ad_text;
    }

    public void setAd_text(String ad_text) {
        this.ad_text = ad_text;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Set<Keyword> getKeywordset() {
        return Keywordset;
    }

    public void setKeywordset(Set<Keyword> keywordset) {
        Keywordset = keywordset;
    }


    public Budget getAd_budget() {
        return ad_budget;
    }

    public void setAd_budget(Budget ad_budget) {
        this.ad_budget = ad_budget;
    }

    public TargetAudience getTargetAudience() {
        return targetAudience;
    }

    public void setTargetAudience(TargetAudience targetAudience) {
        this.targetAudience = targetAudience;
    }
}
