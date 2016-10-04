/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Developer
 */
public abstract class BaseAjaxServlet extends HttpServlet {

    private int x;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequestBase(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Boolean loggedIn = checkSession(request, response);
        if (loggedIn) {
            processRequest(request, response);
        }
    }

    protected Boolean checkSession(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Boolean r = false;
        if (request.getSession() != null && request.getSession().getAttribute("ui") != null) {
            request.setAttribute("ui", (String) request.getSession().getAttribute("ui"));
            r = true;
        } else {
            AjaxResult result = new AjaxResult();
            result.setIsError(true);
            result.setResponse("Session has timed out.");
            writeResult(result, response);
        }
        return r;
    }

    protected void handleAjaxException(String message, HttpServletResponse response) throws IOException {
        response.getWriter().write(message);
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }

    protected void writeResult(AjaxResult result, HttpServletResponse response) throws IOException {
        PrintWriter out = null;
        try {
            if (result.getResponseType() == AjaxResult.XML_RESPONSE) {
                response.setContentType("text/xml");
            } else if (result.getResponseType() == AjaxResult.JSON_RESPONSE) {
                response.setContentType("text/xml");
            }
            out = response.getWriter();
            out.write(result.getResponse());
            if (result.getIsError() == true) {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            } else {
                response.setStatus(HttpServletResponse.SC_OK);
            }
        } finally {
            out.close();
        }
    }

    public Long getLoggedInUser(HttpServletRequest request) {
        Long userId = 0L;
        if (request.getSession() != null && request.getSession().getAttribute("ui") != null) {
            try {
                userId = Long.parseLong((String) request.getSession().getAttribute("ui"));
            } catch (Exception e) {
            }
        }
        return userId;
    }

    /**
     * Checks permissions of the logged in user
     */
    /*
     protected Boolean checkPermission(HttpServletRequest request, Long serviceID, String attribute) {
     if (attribute == null) {
     attribute = "view";
     }
     UserAccountFacadeRemote rem = new ConnectCore().connectUserAccountRemote();
     UserAccessControl uac = null;
     try {
     uac = rem.getUserAccessControl(getLoggedInUser(request), serviceID);
     if (uac == null) {
     return false;
     }

     if (attribute.equalsIgnoreCase("view")) {
     return uac.getViewYN().equalsIgnoreCase("y");
     }
     if (attribute.equalsIgnoreCase("add")) {
     return uac.getAddYN().equalsIgnoreCase("y");
     }
     if (attribute.equalsIgnoreCase("edit")) {
     return uac.getEditYN().equalsIgnoreCase("y");
     }
     if (attribute.equalsIgnoreCase("remove")) {
     return uac.getRemoveYN().equalsIgnoreCase("y");
     }
     if (attribute.equalsIgnoreCase("validate")) {
     return uac.getValidateYN().equalsIgnoreCase("y");
     }

     } catch (Exception e) {
     e.printStackTrace();
     }
     return false;
     }
     */
    protected abstract void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequestBase(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequestBase(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
