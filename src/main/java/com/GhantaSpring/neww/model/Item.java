package com.GhantaSpring.neww.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Item {

    @Id
    private String name;
    private String state;
    private String district;
    private String city;
    private String pin;
    private String productType;
    private String contact;

    // No-arg constructor
    public Item() {
    }

    public Item(String name, String state, String district, String city, String pin, String productType, String contact) {
        this.name = name;
        this.state = state;
        this.district = district;
        this.city = city;
        this.pin = pin;
        this.productType = productType;
        this.contact = contact;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "Item{" +
                "name='" + name + '\'' +
                ", state='" + state + '\'' +
                ", district='" + district + '\'' +
                ", city='" + city + '\'' +
                ", pin='" + pin + '\'' +
                ", productType='" + productType + '\'' +
                ", contact='" + contact + '\'' +
                '}';
    }
}

