/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.ajax;

/**
 *
 * @author tarasankar
 */
public class AjaxResult {

    public static final int XML_RESPONSE = 1;
    public static final int JSON_RESPONSE = 2;
    private String response;
    private boolean isError;
    private int responseType;
    public static final String AA_DATA = "aaData";
    public static final String EXCLUDE_CLASS = "*.class";
    public static final String ERROR_IN_SERVLET = "Error in servlet!";
    public static final String ERROR_OCCURED_IN_SERVLET = "Error occured in Servlet!";
    public static final String ERROR_IN_AJAX_CALL = "Error occured in AJAX Call!";

    /**
     * @return the response
     */
    public String getResponse() {
        return response;
    }

    /**
     * @param response the response to set
     */
    public void setResponse(String response) {
        this.response = response;
    }

    /**
     * @return the isError
     */
    public boolean getIsError() {
        return isError;
    }

    /**
     * @param isError the isError to set
     */
    public void setIsError(boolean isError) {
        this.isError = isError;
    }

    /**
     * @return the responseType
     */
    public int getResponseType() {
        return responseType;
    }

    /**
     * @param responseType the responseType to set
     */
    public void setResponseType(int responseType) {
        this.responseType = responseType;
    }
}
