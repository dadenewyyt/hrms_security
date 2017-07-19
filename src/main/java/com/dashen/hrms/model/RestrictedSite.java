package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="ppc_restricted_sites")
public class RestrictedSite implements Serializable {

    private static final long serialVersionUID = 8905072597626554477L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private int id;

    @Column(name="advertiser_id")
    private int advertiserId;

    @Column(name="site")
    private String site;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAdvertiserId() {
        return advertiserId;
    }

    public void setAdvertiserId(int advertiserId) {
        this.advertiserId = advertiserId;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public static RestrictedSite map(Object[] resultSet){

        RestrictedSite restrictedSite = new RestrictedSite();

        restrictedSite.setId((int)resultSet[0]);
        restrictedSite.setAdvertiserId((int)resultSet[1]);
        restrictedSite.setSite(resultSet[2].toString());

        return restrictedSite;
    }

    public static List<RestrictedSite>mapList(List<Object[]> resultSet){

        List<RestrictedSite> restrictedSiteList = new ArrayList<>();

        for(Object[] object : resultSet){

            restrictedSiteList.add(map(object));
        }

        return restrictedSiteList;
    }
}
