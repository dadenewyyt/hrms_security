package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ppc_click")
public class Click implements Serializable{

    public Click() {

    }

    private static final long serialVersionUID = -3731928688607816470L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    @Column(name = "ID")
    private int id;


    @ManyToOne(targetEntity = Ad.class)
    private Ad ad;

    @ManyToOne(targetEntity = Consumer.class)
    private Consumer consumer;

    @ManyToOne(targetEntity = Keyword.class)
    private Keyword keyWord;

    @ManyToOne(targetEntity = Device.class)
    @JoinColumn(name="clicked_device")
    private Device clickedDevice;

    @OneToOne
    @JoinColumn(name="click_country")
    private Country clickedCountry;

    @Column(name="click_value")
    private float clickValue;

    @Column(name="ip")
    private String ipAddress;

    @Column(name="created_date")
    private Date createdDate;

    @Column(name="timestamp")
    private Date timeStamp;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public float getClickValue() {
        return clickValue;
    }

    public void setClickValue(float clickValue) {
        this.clickValue = clickValue;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }


    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public Ad getAd() {
        return ad;
    }

    public void setAd(Ad ad) {
        this.ad = ad;
    }

    public Consumer getConsumer() {
        return consumer;
    }

    public void setConsumer(Consumer consumer) {
        this.consumer = consumer;
    }

    public Keyword getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(Keyword keyWord) {
        this.keyWord = keyWord;
    }

    public Device getClickedDevice() {
        return clickedDevice;
    }

    public void setClickedDevice(Device clickedDevice) {
        this.clickedDevice = clickedDevice;
    }

    public Country getClickedCountry() {
        return clickedCountry;
    }

    public void setClickedCountry(Country clickedCountry) {
        this.clickedCountry = clickedCountry;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
}
