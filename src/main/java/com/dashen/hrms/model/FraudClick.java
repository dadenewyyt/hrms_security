package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name ="ppc_fraud_clicks")
public class FraudClick implements Serializable{

    private static final long serialVersionUID = -7437488503835474704L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private int id;

    @Column(name="advertiser_id")
    private int advertiserId;

    @Column(name="ip")
    private String ipAddress;

    @Column(name="clicktime")
    private Date clickTime;

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

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public Date getClickTime() {
        return clickTime;
    }

    public void setClickTime(Date clickTime) {
        this.clickTime = clickTime;
    }
}
