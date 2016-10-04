/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dao;

import com.roadway.dto.Status;
import com.roadway.dto.UserBean;
import com.roadway.util.ROADWAYCONSTANT;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 *
 * @author tarasankar
 */
public class UserDao {

    static private UserDao _instance = null;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    /**
     * For making the UserDao class Singleton
     *
     * @return instance of UserDao
     */
    static public UserDao getInstance() {
        if (_instance == null) {
            _instance = new UserDao();
        }
        return _instance;
    }

    public Status checkUserAuthentication(String useName, String password) throws SQLException, ClassNotFoundException {
        Status status = new Status();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (null != con) {
            ps = con.prepareStatement("SELECT user_id, user_login_name, user_login_password, user_name, user_email, \n"
                    + "       user_mobile, user_addess, user_type_id, user_type_code, branch_id, branch_name, branch_code\n"
                    + "  FROM user_details_view where user_login_name = ?");
            ps.setString(1, useName);
            rs = ps.executeQuery();
            try {
                if (rs.next()) {
                    if (password.equals(rs.getString("user_login_password"))) {
                        UserBean userBean = new UserBean();
                        userBean.setUserId(rs.getLong("user_id"));
                        userBean.setUserLoginName(rs.getString("user_login_name"));
                        userBean.setUserName(rs.getString("user_name"));
                        userBean.setUserEmail(rs.getString("user_email"));
                        userBean.setUserMobile(rs.getString("user_mobile"));
                        userBean.setUserAddess(rs.getString("user_addess"));
                        userBean.setUserTypeId(rs.getLong("user_type_id"));
                        userBean.setUserTypeCode(rs.getString("user_type_code"));
                        userBean.setBranchId(rs.getLong("branch_id"));
                        userBean.setBranchCode(rs.getString("branch_code"));
                        userBean.setBranchName(rs.getString("branch_name"));
                        status.setUserBean(userBean);
                        status.setStatusType(ROADWAYCONSTANT.SUCCESS);
                    } else {
                        status.setStatusType(ROADWAYCONSTANT.FAILURE);
                        status.setText("Invalid Password!");
                    }
                } else {
                    status.setStatusType(ROADWAYCONSTANT.FAILURE);
                    status.setText("Invalid Login Name!");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                ConnectionManager.closeResultSetConnectionPreparedStatement(rs, ps, con);
            }
        }
        return status;
    }
}
