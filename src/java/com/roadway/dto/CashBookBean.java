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
public class CashBookBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long cashBookTypeId;
    private String cashBookTypeName;
    private String cashBookTypeCode;
    private Long cashbookId;
    private Long lorryId;
    private String lorryNo;
    private Long transportId;
    private String transportName;
    private Long userId;
    private Long challanId;
    private String challanNo;
    private String challanDate;
    private String cashbookDate;
    private String amount;
    private String mrp;
    private String balance;
    private String cashbookPayMode;
    private String remarks;
    private String expenceType;
    private String cashBookAdvance;
    private String challanAdvance;
    private ChallanBean challanBean;

    public String getChallanDate() {
        return challanDate;
    }

    public void setChallanDate(String challanDate) {
        this.challanDate = challanDate;
    }

    public ChallanBean getChallanBean() {
        return challanBean;
    }

    public void setChallanBean(ChallanBean challanBean) {
        this.challanBean = challanBean;
    }

    public String getCashBookAdvance() {
        return cashBookAdvance;
    }

    public void setCashBookAdvance(String cashBookAdvance) {
        this.cashBookAdvance = cashBookAdvance;
    }

    public String getChallanAdvance() {
        return challanAdvance;
    }

    public void setChallanAdvance(String challanAdvance) {
        this.challanAdvance = challanAdvance;
    }

    public Long getCashbookId() {
        return cashbookId;
    }

    public void setCashbookId(Long cashbookId) {
        this.cashbookId = cashbookId;
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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getChallanId() {
        return challanId;
    }

    public void setChallanId(Long challanId) {
        this.challanId = challanId;
    }

    public String getChallanNo() {
        return challanNo;
    }

    public void setChallanNo(String challanNo) {
        this.challanNo = challanNo;
    }

    public String getCashbookDate() {
        return cashbookDate;
    }

    public void setCashbookDate(String cashbookDate) {
        this.cashbookDate = cashbookDate;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getMrp() {
        return mrp;
    }

    public void setMrp(String mrp) {
        this.mrp = mrp;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getCashbookPayMode() {
        return cashbookPayMode;
    }

    public void setCashbookPayMode(String cashbookPayMode) {
        this.cashbookPayMode = cashbookPayMode;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getExpenceType() {
        return expenceType;
    }

    public void setExpenceType(String expenceType) {
        this.expenceType = expenceType;
    }

    public Long getCashBookTypeId() {
        return cashBookTypeId;
    }

    public void setCashBookTypeId(Long cashBookTypeId) {
        this.cashBookTypeId = cashBookTypeId;
    }

    public String getCashBookTypeName() {
        return cashBookTypeName;
    }

    public void setCashBookTypeName(String cashBookTypeName) {
        this.cashBookTypeName = cashBookTypeName;
    }

    public String getCashBookTypeCode() {
        return cashBookTypeCode;
    }

    public void setCashBookTypeCode(String cashBookTypeCode) {
        this.cashBookTypeCode = cashBookTypeCode;
    }

}
