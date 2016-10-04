/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dto;

import java.io.Serializable;

/**
 *
 * @author tarasankar
 */
public class LorryBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long lorryId;
    private String lorryNo;
    private String phoneNumberOfLorryDriverOrOwner;
    private String accNoOfLorryOwner;
    private String lorryWeight;
    private String lorryRate;
    private String lorryEmpo;
    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Long getLorryId() {
        return lorryId;
    }

    public void setLorryId(Long lorryId) {
        this.lorryId = lorryId;
    }

    public String getLorryNo() {
        return lorryNo;
    }

    public void setLorryNo(String lorryNo) {
        this.lorryNo = lorryNo;
    }

    public String getPhoneNumberOfLorryDriverOrOwner() {
        return phoneNumberOfLorryDriverOrOwner;
    }

    public void setPhoneNumberOfLorryDriverOrOwner(String phoneNumberOfLorryDriverOrOwner) {
        this.phoneNumberOfLorryDriverOrOwner = phoneNumberOfLorryDriverOrOwner;
    }

    public String getAccNoOfLorryOwner() {
        return accNoOfLorryOwner;
    }

    public void setAccNoOfLorryOwner(String accNoOfLorryOwner) {
        this.accNoOfLorryOwner = accNoOfLorryOwner;
    }

    public String getLorryWeight() {
        return lorryWeight;
    }

    public void setLorryWeight(String lorryWeight) {
        this.lorryWeight = lorryWeight;
    }

    public String getLorryRate() {
        return lorryRate;
    }

    public void setLorryRate(String lorryRate) {
        this.lorryRate = lorryRate;
    }

    public String getLorryEmpo() {
        return lorryEmpo;
    }

    public void setLorryEmpo(String lorryEmpo) {
        this.lorryEmpo = lorryEmpo;
    }

}
