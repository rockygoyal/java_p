/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dto;

import java.io.Serializable;
import javax.servlet.http.Part;

/**
 *
 * @author tarasankar
 */
public class ChallanBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long challanid;
    private Long transportId;
    private Long lorryId;
    private String challanDate;
    private String totalFreight;
    private String advance;
    private String toPay;
    private String rcBookPicUrl;
    private String drivingLicensePicUrl;
    private Part rcBookPic;
    private Part drivingLicensePic;
    private TransportBean transportBean;
    private LorryBean lorryBean;
    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Part getRcBookPic() {
        return rcBookPic;
    }

    public void setRcBookPic(Part rcBookPic) {
        this.rcBookPic = rcBookPic;
    }

    public Part getDrivingLicensePic() {
        return drivingLicensePic;
    }

    public void setDrivingLicensePic(Part drivingLicensePic) {
        this.drivingLicensePic = drivingLicensePic;
    }

    public TransportBean getTransportBean() {
        return transportBean;
    }

    public void setTransportBean(TransportBean transportBean) {
        this.transportBean = transportBean;
    }

    public LorryBean getLorryBean() {
        return lorryBean;
    }

    public void setLorryBean(LorryBean lorryBean) {
        this.lorryBean = lorryBean;
    }

    public Long getChallanid() {
        return challanid;
    }

    public void setChallanid(Long challanid) {
        this.challanid = challanid;
    }

    public Long getTransportId() {
        return transportId;
    }

    public void setTransportId(Long transportId) {
        this.transportId = transportId;
    }

    public Long getLorryId() {
        return lorryId;
    }

    public void setLorryId(Long lorryId) {
        this.lorryId = lorryId;
    }

    public String getChallanDate() {
        return challanDate;
    }

    public void setChallanDate(String challanDate) {
        this.challanDate = challanDate;
    }

    public String getTotalFreight() {
        return totalFreight;
    }

    public void setTotalFreight(String totalFreight) {
        this.totalFreight = totalFreight;
    }

    public String getAdvance() {
        return advance;
    }

    public void setAdvance(String advance) {
        this.advance = advance;
    }

    public String getToPay() {
        return toPay;
    }

    public void setToPay(String toPay) {
        this.toPay = toPay;
    }

    public String getRcBookPicUrl() {
        return rcBookPicUrl;
    }

    public void setRcBookPicUrl(String rcBookPicUrl) {
        this.rcBookPicUrl = rcBookPicUrl;
    }

    public String getDrivingLicensePicUrl() {
        return drivingLicensePicUrl;
    }

    public void setDrivingLicensePicUrl(String drivingLicensePicUrl) {
        this.drivingLicensePicUrl = drivingLicensePicUrl;
    }

}
