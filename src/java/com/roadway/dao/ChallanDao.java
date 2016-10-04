/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dao;

import com.roadway.dto.CashBookBean;
import com.roadway.dto.ChallanBean;
import com.roadway.dto.LorryBean;
import com.roadway.dto.Status;
import com.roadway.dto.TransportBean;
import com.roadway.util.ROADWAYCONSTANT;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tarasankar
 */
public class ChallanDao {

    static private ChallanDao _instance = null;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    /**
     * For making the ChallanDao class Singleton
     *
     * @return instance of ChallanDao
     */
    static public ChallanDao getInstance() {
        if (_instance == null) {
            _instance = new ChallanDao();
        }
        return _instance;
    }

    public Status saveChallan(ChallanBean challanBean) throws ClassNotFoundException, SQLException {
        Status status = new Status();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        Long tranportId = 0L;
        Long lorryId = 0L;
        Long generatedChallanId = 0L;
        try {
            if (null != con) {
                try {
                    ps = con.prepareStatement("INSERT INTO transport_details(transport_id, transport_name, loading_add_line1, loading_add_line2, \n"
                            + "            loading_add_line3, unloading_add_line1, unloading_add_line2, \n"
                            + "            unloading_add_line3, created_on, created_by)\n"
                            + "    VALUES (nextval('transport_id'), ?, ?, ?, ?, ?, ?, ?, ?, ?);", PreparedStatement.RETURN_GENERATED_KEYS);
                    ps.setString(1, challanBean.getTransportBean().getTransportName());
                    ps.setString(2, challanBean.getTransportBean().getLoadingAddLine1());
                    ps.setString(3, challanBean.getTransportBean().getLoadingAddLine2());
                    ps.setString(4, challanBean.getTransportBean().getLoadingAddLine3());
                    ps.setString(5, challanBean.getTransportBean().getUnloadingAddLine1());
                    ps.setString(6, challanBean.getTransportBean().getUnloadingAddLine2());
                    ps.setString(7, challanBean.getTransportBean().getUnloadingAddLine3());
                    ps.setDate(8, new Date(System.currentTimeMillis()));
                    ps.setLong(9, Long.valueOf(challanBean.getUserId()));
                    ps.executeUpdate();
                } catch (SQLException | NumberFormatException e) {
                    e.printStackTrace();
                }
                ResultSet set = ps.getGeneratedKeys();
                if (set.next()) {
                    tranportId = set.getLong(1);
                }
                try {
                    ps = con.prepareStatement("INSERT INTO lorry_details(\n"
                            + "            lorry_id, lorry_no, phone_number_of_lorry_driver_or_owner, acc_no_of_lorry_owner, \n"
                            + "            lorry_weight, lorry_rate, lorry_empo, created_on, created_by)\n"
                            + "    VALUES (nextval('lorry_id'), ?, ?, ?, ?, ?, ?, ?, ?);", PreparedStatement.RETURN_GENERATED_KEYS);
                    ps.setString(1, challanBean.getLorryBean().getLorryNo());
                    ps.setString(2, challanBean.getLorryBean().getPhoneNumberOfLorryDriverOrOwner());
                    ps.setString(3, challanBean.getLorryBean().getAccNoOfLorryOwner());
                    ps.setString(4, challanBean.getLorryBean().getLorryWeight());
                    ps.setString(5, challanBean.getLorryBean().getLorryRate());
                    ps.setString(6, challanBean.getLorryBean().getLorryEmpo());
                    ps.setDate(7, new Date(System.currentTimeMillis()));
                    ps.setLong(8, Long.valueOf(challanBean.getUserId()));
                    ps.executeUpdate();
                } catch (SQLException | NumberFormatException e) {
                    e.printStackTrace();
                }
                ResultSet set1 = ps.getGeneratedKeys();
                if (set1.next()) {
                    lorryId = set1.getLong(1);
                }

                if (tranportId != 0 && lorryId != 0) {
                    try {
                        ps = con.prepareStatement("INSERT INTO challan_details(\n"
                                + "            challan_id, transport_id, lorry_id, user_id, challan_date, total_freight, \n"
                                + "            advance, to_pay, rc_book_pic_url, driving_license_pic_url, created_on, created_by)\n"
                                + "    VALUES (nextval('challan_id'), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);", PreparedStatement.RETURN_GENERATED_KEYS);
                        ps.setLong(1, tranportId);
                        ps.setLong(2, lorryId);
                        ps.setLong(3, Long.valueOf(challanBean.getUserId()));
                        ps.setString(4, challanBean.getChallanDate());
                        ps.setString(5, challanBean.getTotalFreight());
                        ps.setString(6, challanBean.getAdvance());
                        ps.setString(7, challanBean.getToPay());
                        ps.setString(8, challanBean.getRcBookPicUrl());
                        ps.setString(9, challanBean.getDrivingLicensePicUrl());
                        ps.setDate(10, new Date(System.currentTimeMillis()));
                        ps.setLong(11, Long.valueOf(challanBean.getUserId()));
                        if (ps.executeUpdate() == 1) {
                            ResultSet set2 = ps.getGeneratedKeys();
                            if (set2.next()) {
                                generatedChallanId = set2.getLong(1);
                            }
                            status.setChallanNo(ROADWAYCONSTANT.CHALLAN_FORMAT + String.valueOf(generatedChallanId));
                            status.setStatusType(ROADWAYCONSTANT.SUCCESS);
                        } else {
                            status.setStatusType(ROADWAYCONSTANT.FAILURE);
                        }
                    } catch (SQLException | NumberFormatException e) {
                        e.printStackTrace();
                    }
                } else {
                    status.setStatusType(ROADWAYCONSTANT.FAILURE);
                }
            }
        } finally {
            ConnectionManager.closeConnectionPreparedStatement(ps, con);
        }

        return status;
    }

    public List<CashBookBean> getCashBookTypeDetails() throws ClassNotFoundException, SQLException {
        List<CashBookBean> cashBookBeans = new ArrayList<>();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (null != con) {
            try {
                ps = con.prepareStatement("SELECT cashbook_type_id, cashbook_type_name, cashbook_type_code FROM cashbook_type where is_active=1");
                rs = ps.executeQuery();
                while (rs.next()) {
                    CashBookBean cashBookBean = new CashBookBean();
                    cashBookBean.setCashBookTypeId(rs.getLong("cashbook_type_id"));
                    cashBookBean.setCashBookTypeCode(rs.getString("cashbook_type_code"));
                    cashBookBean.setCashBookTypeName(rs.getString("cashbook_type_name"));
                    cashBookBeans.add(cashBookBean);
                }
            } catch (SQLException | NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return cashBookBeans;
    }

    public List<CashBookBean> fetchCashBookListByCategory(Long cashbookTypeId) throws ClassNotFoundException, SQLException {
        List<CashBookBean> cashBookBeans = new ArrayList<>();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (null != con) {
            try {
                ps = con.prepareStatement("SELECT cashbook_id, lorry_id, transport_id, user_id, challan_id, cashbook_type_id, \n"
                        + "       cashbook_date, amount, mrp, cashbook_advance, balance, cashbook_pay_mode, \n"
                        + "       remarks, expence_type, cashbook_type_name, lorry_no, phone_number_of_lorry_driver_or_owner, \n"
                        + "       acc_no_of_lorry_owner, lorry_weight, lorry_rate, lorry_empo, \n"
                        + "       transport_name, challan_date, total_freight, challan_advance, \n"
                        + "       to_pay\n"
                        + "  FROM cashbook_details_view where cashbook_type_id = ?;");
                ps.setLong(1, cashbookTypeId);
                rs = ps.executeQuery();
                while (rs.next()) {
                    CashBookBean cashBookBean = new CashBookBean();
                    cashBookBean.setCashBookTypeId(rs.getLong("cashbook_type_id"));
                    cashBookBean.setCashBookTypeName(rs.getString("cashbook_type_name"));
                    cashBookBean.setCashbookId(rs.getLong("cashbook_id"));
                    cashBookBean.setLorryId(rs.getLong("lorry_id"));
                    cashBookBean.setLorryNo(rs.getString("lorry_no"));
                    cashBookBean.setTransportId(rs.getLong("transport_id"));
                    cashBookBean.setTransportName(rs.getString("transport_name"));
                    cashBookBean.setUserId(rs.getLong("user_id"));
                    cashBookBean.setChallanId(rs.getLong("challan_id"));
                    cashBookBean.setCashbookDate(rs.getString("cashbook_date"));
                    cashBookBean.setAmount(rs.getString("amount"));
                    cashBookBean.setMrp(rs.getString("mrp"));
                    cashBookBean.setCashBookAdvance(rs.getString("cashbook_advance"));
                    cashBookBean.setChallanAdvance(rs.getString("cashbook_type_name"));
                    cashBookBean.setBalance(rs.getString("balance"));
                    cashBookBean.setCashbookPayMode(rs.getString("cashbook_pay_mode"));
                    cashBookBean.setRemarks(rs.getString("remarks"));
                    cashBookBean.setExpenceType(rs.getString("expence_type"));
                    cashBookBeans.add(cashBookBean);
                }
            } catch (SQLException | NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return cashBookBeans;
    }

    public Status saveCashBookDetails(CashBookBean cashBookBean) throws ClassNotFoundException, SQLException {
        Status status = new Status();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        if (null != con) {
            try {
                ps = con.prepareStatement("INSERT INTO cashbook_details(\n"
                        + "            cashbook_id, lorry_id, transport_id, user_id, challan_id, cashbook_type_id, \n"
                        + "            cashbook_date, amount, mrp, advance, balance, cashbook_pay_mode, \n"
                        + "            remarks, expence_type, created_on, created_by)\n"
                        + "    VALUES (nextval('cashbook_id'), ?, ?, ?, ?, ?, \n"
                        + "            ?, ?, ?, ?, ?, ?, \n"
                        + "            ?, ?, ?, ?);", PreparedStatement.RETURN_GENERATED_KEYS);
                ps.setLong(1, 1L);
                ps.setLong(2, 1L);
                ps.setLong(3, cashBookBean.getUserId());
                ps.setLong(4, 1L);
                ps.setLong(5, cashBookBean.getCashBookTypeId());
                ps.setString(6, cashBookBean.getCashbookDate());
                ps.setString(7, cashBookBean.getAmount());
                ps.setString(8, cashBookBean.getMrp());
                ps.setString(9, cashBookBean.getCashBookAdvance());
                ps.setString(10, cashBookBean.getBalance());
                switch (cashBookBean.getCashbookPayMode()) {
                    case "1":
                        ps.setString(11, ROADWAYCONSTANT.RECEIVED);
                        break;
                    case "2":
                        ps.setString(11, ROADWAYCONSTANT.PAID);
                        break;
                    default:
                        ps.setString(11, "Undefined");
                        break;
                }
                ps.setString(12, cashBookBean.getRemarks());
                ps.setString(13, cashBookBean.getExpenceType());
                ps.setDate(14, new Date(System.currentTimeMillis()));
                ps.setLong(15, cashBookBean.getUserId());
                if (ps.executeUpdate() == 1) {
                    status.setStatusType(ROADWAYCONSTANT.SUCCESS);
                } else {
                    status.setStatusType(ROADWAYCONSTANT.FAILURE);
                }
            } catch (SQLException | NumberFormatException e) {
                e.printStackTrace();
            }
        } else {
            status.setStatusType(ROADWAYCONSTANT.FAILURE);
        }
        return status;
    }

    public ChallanBean fetchChallanDetails(String challanId) throws ClassNotFoundException, SQLException {
        ChallanBean challanBean = new ChallanBean();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (null != con) {
            try {
                ps = con.prepareStatement("SELECT lorry_id, transport_id, user_id, challan_id, lorry_no, phone_number_of_lorry_driver_or_owner, \n"
                        + "       acc_no_of_lorry_owner, lorry_weight, lorry_rate, lorry_empo, \n"
                        + "       transport_name, challan_date, total_freight, challan_advance, \n"
                        + "       to_pay FROM challan_details_view where challan_id = ?");
                ps.setLong(1, Long.valueOf(challanId));
                rs = ps.executeQuery();
                while (rs.next()) {
                    challanBean.setChallanid(rs.getLong("challan_id"));
                    challanBean.setAdvance(rs.getString("challan_advance"));
                    challanBean.setChallanDate(rs.getString("challan_date"));
                    challanBean.setTotalFreight(rs.getString("total_freight"));
                    challanBean.setToPay(rs.getString("to_pay"));
                    challanBean.setUserId(String.valueOf(rs.getLong("user_id")));
                    challanBean.setLorryId(rs.getLong("lorry_id"));
                    LorryBean lorryBean = new LorryBean();
                    lorryBean.setAccNoOfLorryOwner(rs.getString("acc_no_of_lorry_owner"));
                    lorryBean.setLorryEmpo(rs.getString("lorry_empo"));
                    lorryBean.setLorryNo(rs.getString("lorry_no"));
                    lorryBean.setPhoneNumberOfLorryDriverOrOwner(rs.getString("phone_number_of_lorry_driver_or_owner"));
                    lorryBean.setLorryWeight(rs.getString("lorry_weight"));
                    lorryBean.setLorryRate(rs.getString("lorry_rate"));
                    challanBean.setLorryBean(lorryBean);
                    TransportBean transportBean = new TransportBean();
                    transportBean.setTransportName(rs.getString("transport_name"));
                    challanBean.setTransportId(rs.getLong("transport_id"));
                    challanBean.setTransportBean(transportBean);
                }
            } catch (SQLException | NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return challanBean;
    }
}
