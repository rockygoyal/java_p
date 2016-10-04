/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.servlet;

import com.roadway.ajax.AjaxResult;
import com.roadway.ajax.BaseAjaxServlet;
import com.roadway.dao.ChallanDao;
import com.roadway.dao.UserDao;
import com.roadway.dto.CashBookBean;
import com.roadway.dto.ChallanBean;
import com.roadway.dto.LorryBean;
import com.roadway.dto.Status;
import com.roadway.dto.TransportBean;
import com.roadway.util.ROADWAYCONSTANT;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Developer
 */
@MultipartConfig
@WebServlet(name = "/HomeController", urlPatterns = "/HomeController")
public class HomeController extends BaseAjaxServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType(ROADWAYCONSTANT.RESPONSECONTENTTYPE);
        AjaxResult result = null;
        HttpSession session = request.getSession(false);
        try {
            switch (request.getParameter("reqType")) {
                case "checkUserAuthentication":
                    result = checkUserAuthentication(request, response);
                    break;
                case "saveChallan":
                    result = saveChallan(request, response);
                    break;
                case "fetchDifferenceList":
                    result = fetchDifferenceList(request, response);
                    break;
                case "fetchBalanceList":
                    result = fetchBalanceList(request, response);
                    break;
                case "fetchAdvanceList":
                    result = fetchAdvanceList(request, response);
                    break;
                case "fetchCommisionList":
                    result = fetchCommisionList(request, response);
                    break;
                case "saveCashBookDetails":
                    result = saveCashBookDetails(request, response);
                    break;
                case "fetchChallanDetails":
                    result = fetchChallanDetails(request, response);
                    break;
                case "logout":
                    logoutUser(request, response);
                    break;
                default:
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                    break;
            }
            if (result != null) {
                writeResult(result, response);
            }
        } catch (IOException ex) {
            ex.printStackTrace();
            result = new AjaxResult();
            result.setIsError(true);
            result.setResponse(AjaxResult.ERROR_IN_AJAX_CALL);
            writeResult(result, response);
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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

    private AjaxResult checkUserAuthentication(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        result.setResponseType(AjaxResult.JSON_RESPONSE);
        result.setIsError(false);
        String actionMsg;
        try {
            Status status = UserDao.getInstance().checkUserAuthentication(request.getParameter("userName"), request.getParameter("password"));
            if (status.getStatusType().equals(ROADWAYCONSTANT.SUCCESS)) {
                request.getSession().setAttribute("userBean", status.getUserBean());
                request.getSession().setAttribute("userId", status.getUserBean().getUserId());
                List<CashBookBean> cashBookBeans = ChallanDao.getInstance().getCashBookTypeDetails();
                request.getSession().setAttribute("cashBookBeans", cashBookBeans);
            }
            actionMsg = new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(status);
            result.setResponse(actionMsg);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    private void logoutUser(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getSession().invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private AjaxResult saveChallan(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        result.setResponseType(AjaxResult.JSON_RESPONSE);
        result.setIsError(false);
        String actionMsg = "";

        try {
            Part rcBookPic = request.getPart("rcBookPic");
            Part drivingLicensePic = request.getPart("drivingLicensePic");
            String userId = String.valueOf(request.getSession().getAttribute("userId"));
//            ChallanBean challanBean = new JSONDeserializer<ChallanBean>().deserialize(request.getParameter("challanData"), ChallanBean.class);
            ChallanBean challanBean = new ChallanBean();
            TransportBean transportBean = new TransportBean();
            LorryBean lorryBean = new LorryBean();
            challanBean.setUserId(userId);
            if (request.getParameter("challanDate") != null) {
                challanBean.setChallanDate(request.getParameter("challanDate"));
            }
            if (request.getParameter("totalFreight") != null) {
                challanBean.setTotalFreight(request.getParameter("totalFreight"));
            }
            if (request.getParameter("advance") != null) {
                challanBean.setAdvance(request.getParameter("advance"));
            }
            if (request.getParameter("toPay") != null) {
                challanBean.setToPay(request.getParameter("toPay"));
            }
            if (request.getParameter("transportName") != null) {
                transportBean.setTransportName(request.getParameter("transportName"));
            }
            if (request.getParameter("loadingAddLine1") != null) {
                transportBean.setTransportName(request.getParameter("loadingAddLine1"));
            }
            if (request.getParameter("loadingAddLine2") != null) {
                transportBean.setLoadingAddLine2(request.getParameter("loadingAddLine2"));
            }
            if (request.getParameter("loadingAddLine3") != null) {
                transportBean.setLoadingAddLine3(request.getParameter("loadingAddLine3"));
            }
            if (request.getParameter("unloadingAddLine1") != null) {
                transportBean.setUnloadingAddLine1(request.getParameter("unloadingAddLine1"));
            }
            if (request.getParameter("unloadingAddLine2") != null) {
                transportBean.setUnloadingAddLine2(request.getParameter("unloadingAddLine2"));
            }
            if (request.getParameter("unloadingAddLine3") != null) {
                transportBean.setUnloadingAddLine3(request.getParameter("unloadingAddLine3"));
            }
            if (request.getParameter("lorryNo") != null) {
                lorryBean.setLorryNo(request.getParameter("lorryNo"));
            }
            if (request.getParameter("phoneNumberOfLorryDriverOrOwner") != null) {
                lorryBean.setPhoneNumberOfLorryDriverOrOwner(request.getParameter("phoneNumberOfLorryDriverOrOwner"));
            }
            if (request.getParameter("accNoOfLorryOwner") != null) {
                lorryBean.setAccNoOfLorryOwner(request.getParameter("accNoOfLorryOwner"));
            }
            if (request.getParameter("lorryWeight") != null) {
                lorryBean.setLorryWeight(request.getParameter("lorryWeight"));
            }
            if (request.getParameter("lorryRate") != null) {
                lorryBean.setLorryRate(request.getParameter("lorryRate"));
            }
            if (request.getParameter("lorryEmpo") != null) {
                lorryBean.setLorryEmpo(request.getParameter("lorryEmpo"));
            }
            challanBean.setTransportBean(transportBean);
            challanBean.setLorryBean(lorryBean);
            Status status = ChallanDao.getInstance().saveChallan(challanBean);
            actionMsg = new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(status);
            result.setResponse(actionMsg);
        } catch (IOException | ServletException e) {
            result.setIsError(true);
            result.setResponse(AjaxResult.ERROR_IN_SERVLET);
        } catch (SQLException | ClassNotFoundException ex) {
        }
        return result;
    }

    private AjaxResult fetchDifferenceList(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        Long cashbookTypeId = 0L;
        List<CashBookBean> cashBookBeans = (List<CashBookBean>) request.getSession().getAttribute("cashBookBeans");
        for (CashBookBean cashBookBean : cashBookBeans) {
            if (cashBookBean.getCashBookTypeName().equalsIgnoreCase(ROADWAYCONSTANT.DIFFERENCE)) {
                cashbookTypeId = cashBookBean.getCashBookTypeId();
            }
        }
        try {
            if (cashbookTypeId != 0) {
                List<CashBookBean> cbbs = ChallanDao.getInstance().fetchCashBookListByCategory(cashbookTypeId);
                if (!cbbs.isEmpty()) {
                    result.setIsError(false);
                    result.setResponseType(AjaxResult.JSON_RESPONSE);
                    result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).rootName(AjaxResult.AA_DATA).serialize(cbbs));
                }
            } else {
                result.setIsError(false);
                result.setResponseType(AjaxResult.JSON_RESPONSE);
                result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(ROADWAYCONSTANT.FAILED_TRY_AGAIN));
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setIsError(true);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
            result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(AjaxResult.ERROR_IN_SERVLET));
        }
        return result;
    }

    private AjaxResult fetchBalanceList(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        Long cashbookTypeId = 0L;
        List<CashBookBean> cashBookBeans = (List<CashBookBean>) request.getSession().getAttribute("cashBookBeans");
        for (CashBookBean cashBookBean : cashBookBeans) {
            if (cashBookBean.getCashBookTypeName().equalsIgnoreCase(ROADWAYCONSTANT.BALANCE)) {
                cashbookTypeId = cashBookBean.getCashBookTypeId();
            }
        }
        try {
            if (cashbookTypeId != 0) {
                List<CashBookBean> cbbs = ChallanDao.getInstance().fetchCashBookListByCategory(cashbookTypeId);
                if (!cbbs.isEmpty()) {
                    result.setIsError(false);
                    result.setResponseType(AjaxResult.JSON_RESPONSE);
                    result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).rootName(AjaxResult.AA_DATA).serialize(cbbs));
                }
            } else {
                result.setIsError(false);
                result.setResponseType(AjaxResult.JSON_RESPONSE);
                result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(ROADWAYCONSTANT.FAILED_TRY_AGAIN));
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setIsError(true);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
            result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(AjaxResult.ERROR_IN_SERVLET));
        }
        return result;
    }

    private AjaxResult fetchAdvanceList(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        Long cashbookTypeId = 0L;
        List<CashBookBean> cashBookBeans = (List<CashBookBean>) request.getSession().getAttribute("cashBookBeans");
        for (CashBookBean cashBookBean : cashBookBeans) {
            if (cashBookBean.getCashBookTypeName().equalsIgnoreCase(ROADWAYCONSTANT.ADVANCE)) {
                cashbookTypeId = cashBookBean.getCashBookTypeId();
            }
        }
        try {
            if (cashbookTypeId != 0) {
                List<CashBookBean> cbbs = ChallanDao.getInstance().fetchCashBookListByCategory(cashbookTypeId);
                if (!cbbs.isEmpty()) {
                    result.setIsError(false);
                    result.setResponseType(AjaxResult.JSON_RESPONSE);
                    result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).rootName(AjaxResult.AA_DATA).serialize(cbbs));
                }
            } else {
                result.setIsError(false);
                result.setResponseType(AjaxResult.JSON_RESPONSE);
                result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(ROADWAYCONSTANT.FAILED_TRY_AGAIN));
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setIsError(true);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
            result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(AjaxResult.ERROR_IN_SERVLET));
        }
        return result;
    }

    private AjaxResult fetchCommisionList(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        Long cashbookTypeId = 0L;
        List<CashBookBean> cashBookBeans = (List<CashBookBean>) request.getSession().getAttribute("cashBookBeans");
        for (CashBookBean cashBookBean : cashBookBeans) {
            if (cashBookBean.getCashBookTypeName().equalsIgnoreCase(ROADWAYCONSTANT.COMMISION)) {
                cashbookTypeId = cashBookBean.getCashBookTypeId();
            }
        }
        try {
            if (cashbookTypeId != 0) {
                List<CashBookBean> cbbs = ChallanDao.getInstance().fetchCashBookListByCategory(cashbookTypeId);
                if (!cbbs.isEmpty()) {
                    result.setIsError(false);
                    result.setResponseType(AjaxResult.JSON_RESPONSE);
                    result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).rootName(AjaxResult.AA_DATA).serialize(cbbs));
                }
            } else {
                result.setIsError(false);
                result.setResponseType(AjaxResult.JSON_RESPONSE);
                result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(ROADWAYCONSTANT.FAILED_TRY_AGAIN));
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setIsError(true);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
            result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(AjaxResult.ERROR_IN_SERVLET));
        }
        return result;
    }

    private AjaxResult saveCashBookDetails(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        result.setResponseType(AjaxResult.JSON_RESPONSE);
        result.setIsError(false);
        String actionMsg = "";
        String userId = String.valueOf(request.getSession().getAttribute("userId"));
        CashBookBean cashBookBean = new JSONDeserializer<CashBookBean>().deserialize(request.getParameter("cashBookBeanData"), CashBookBean.class);
        cashBookBean.setUserId(Long.valueOf(userId));
        Status status;
        try {
            status = ChallanDao.getInstance().saveCashBookDetails(cashBookBean);
            actionMsg = new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(status);
            result.setResponse(actionMsg);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    private AjaxResult fetchChallanDetails(HttpServletRequest request, HttpServletResponse response) {
        AjaxResult result = new AjaxResult();
        String challanNo = request.getParameter("challanNo");

        try {
            if (challanNo.contains("/")) {
                if (challanNo.split("/").length == 2) {
                    challanNo = challanNo.split("/")[1];
                    
                    ChallanBean challanBean = ChallanDao.getInstance().fetchChallanDetails(challanNo.substring(1, challanNo.length()));
                    if (challanBean != null) {
                        result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(challanBean));
                    }
                } else {
                    result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize("Wrong"));
                }
            } else {
                result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize("Wrong"));
            }
            result.setIsError(false);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
        } catch (Exception e) {
            e.printStackTrace();
            result.setIsError(true);
            result.setResponseType(AjaxResult.JSON_RESPONSE);
            result.setResponse(new JSONSerializer().exclude(AjaxResult.EXCLUDE_CLASS).serialize(AjaxResult.ERROR_IN_SERVLET));
        }
        return result;
    }

}
