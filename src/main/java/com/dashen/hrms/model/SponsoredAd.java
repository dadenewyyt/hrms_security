package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name ="ppc_ad")
public class SponsoredAd implements Serializable{

    private static final long serialVersionUID = -286830764275466043L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private int id;

    @Column(name="advertiser_id")
    private int advertiserId;

    @Column(name="keywords")
    private String keywords;

    @Column(name ="maxamount")
    private float maxAmount;

    @Column(name ="amountused")
    private float amountUsed;

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

    public float getMaxAmount() {
        return maxAmount;
    }

    public void setMaxAmount(float maxAmount) {
        this.maxAmount = maxAmount;
    }

    public float getAmountUsed() {
        return amountUsed;
    }

    public void setAmountUsed(float amountUsed) {
        this.amountUsed = amountUsed;
    }

    public static SponsoredAd map(Object[] resultSet){

        SponsoredAd ad = new SponsoredAd();
        ad.setId((int)resultSet[0]);
        ad.setAdvertiserId((int)resultSet[1]);
        ad.setAmountUsed((float)resultSet[2]);
        ad.setMaxAmount((float)resultSet[3]);

        return ad;
    }

    public static List<SponsoredAd> mapList(List<Object[]> resultSet){

        List<SponsoredAd>adList = new ArrayList<>();

        for(Object[] object : resultSet){

            adList.add(map(object));
        }
        return adList;
    }
}
