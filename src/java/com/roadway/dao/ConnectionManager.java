/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.roadway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * class for processing the flows for open and close database connections
 *
 * @author IT CELL
 */
public class ConnectionManager {

    /**
     * open a new Database Connection
     *
     * @return Connection
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5433/ROADWAYS", "postgres", "123");
        return con;
    }

    public static void closeResultSetConnectionPreparedStatement(ResultSet rs, PreparedStatement ps, Connection con) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException ex) {
            }
        }
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException ex) {
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

    public static void closeConnectionPreparedStatement(PreparedStatement ps, Connection con) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException ex) {
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
}
