package com.dashen.hrms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by dantheman on 7/20/16.
 */
@Entity
@Table(name="device")
public class Device implements Serializable {

    public Device() {
    }

    private static final long serialVersionUID = -3731928688607816470L;

    @Id
    @GenericGenerator(name = "idSeqGenerator", strategy = "com.dashen.hrms.model.IDGenerator")
    @GeneratedValue(generator = "idSeqGenerator")
    private int id;

    private String device_name;
    private String device_description;
    private String device_id;
    private String device_browser;
    private String device_browser_version;
    private String device_resloution;
    private String device_location;

    public String getDevice_name() {
        return device_name;
    }

    public void setDevice_name(String device_name) {
        this.device_name = device_name;
    }

    public String getDevice_description() {
        return device_description;
    }

    public void setDevice_description(String device_description) {
        this.device_description = device_description;
    }

    public String getDevice_id() {
        return device_id;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public String getDevice_browser() {
        return device_browser;
    }

    public void setDevice_browser(String device_browser) {
        this.device_browser = device_browser;
    }

    public String getDevice_browser_version() {
        return device_browser_version;
    }

    public void setDevice_browser_version(String device_browser_version) {
        this.device_browser_version = device_browser_version;
    }

    public String getDevice_resloution() {
        return device_resloution;
    }

    public void setDevice_resloution(String device_resloution) {
        this.device_resloution = device_resloution;
    }

    public String getDevice_location() {
        return device_location;
    }

    public void setDevice_location(String device_location) {
        this.device_location = device_location;
    }
}
