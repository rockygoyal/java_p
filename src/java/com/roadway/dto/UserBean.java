/*
 * To change this license header;private String choose License Headers in Project Properties.
 * To change this template file;private String choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dto;

import java.io.Serializable;

/**
 *
 * @author Developer
 */
public class UserBean implements Serializable {

    private static final long serialVersionUID = 1L;
    private Long userId;
    private String userLoginName;
    private String userLoginPassword;
    private String userName;
    private String userEmail;
    private String userMobile;
    private String userAddess;
    private Long userTypeId;
    private String userTypeName;
    private String userTypeCode;
    private Long branchId;
    private String branchName;
    private String branchCode;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserLoginName() {
        return userLoginName;
    }

    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName;
    }

    public String getUserLoginPassword() {
        return userLoginPassword;
    }

    public void setUserLoginPassword(String userLoginPassword) {
        this.userLoginPassword = userLoginPassword;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile;
    }

    public String getUserAddess() {
        return userAddess;
    }

    public void setUserAddess(String userAddess) {
        this.userAddess = userAddess;
    }

    public Long getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Long userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getUserTypeName() {
        return userTypeName;
    }

    public void setUserTypeName(String userTypeName) {
        this.userTypeName = userTypeName;
    }

    public String getUserTypeCode() {
        return userTypeCode;
    }

    public void setUserTypeCode(String userTypeCode) {
        this.userTypeCode = userTypeCode;
    }

    public Long getBranchId() {
        return branchId;
    }

    public void setBranchId(Long branchId) {
        this.branchId = branchId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getBranchCode() {
        return branchCode;
    }

    public void setBranchCode(String branchCode) {
        this.branchCode = branchCode;
    }

}
