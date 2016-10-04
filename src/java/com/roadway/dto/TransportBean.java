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
public class TransportBean implements Serializable {

    private static final long serialVersionUID = 1L;
    private Long transportId;
    private String transportName;
    private String loadingAddLine1;
    private String loadingAddLine2;
    private String loadingAddLine3;
    private String unloadingAddLine1;
    private String unloadingAddLine2;
    private String unloadingAddLine3;
    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Long getTransportId() {
        return transportId;
    }

    public void setTransportId(Long transportId) {
        this.transportId = transportId;
    }

    public String getTransportName() {
        return transportName;
    }

    public void setTransportName(String transportName) {
        this.transportName = transportName;
    }

    public String getLoadingAddLine1() {
        return loadingAddLine1;
    }

    public void setLoadingAddLine1(String loadingAddLine1) {
        this.loadingAddLine1 = loadingAddLine1;
    }

    public String getLoadingAddLine2() {
        return loadingAddLine2;
    }

    public void setLoadingAddLine2(String loadingAddLine2) {
        this.loadingAddLine2 = loadingAddLine2;
    }

    public String getLoadingAddLine3() {
        return loadingAddLine3;
    }

    public void setLoadingAddLine3(String loadingAddLine3) {
        this.loadingAddLine3 = loadingAddLine3;
    }

    public String getUnloadingAddLine1() {
        return unloadingAddLine1;
    }

    public void setUnloadingAddLine1(String unloadingAddLine1) {
        this.unloadingAddLine1 = unloadingAddLine1;
    }

    public String getUnloadingAddLine2() {
        return unloadingAddLine2;
    }

    public void setUnloadingAddLine2(String unloadingAddLine2) {
        this.unloadingAddLine2 = unloadingAddLine2;
    }

    public String getUnloadingAddLine3() {
        return unloadingAddLine3;
    }

    public void setUnloadingAddLine3(String unloadingAddLine3) {
        this.unloadingAddLine3 = unloadingAddLine3;
    }

}
