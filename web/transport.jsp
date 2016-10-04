<%-- 
    Document   : transport
    Created on : Oct 1, 2016, 9:26:42 PM
    Author     : tarasankar
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.roadway.dao.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%
    try {
        List<String> s = new ArrayList<>();
        Connection con = ConnectionManager.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT transport_name FROM transport_details WHERE is_active=1");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            s.add(rs.getString("transport_name"));
        }
        String query = (String) request.getParameter("q");
        System.out.println(query);
        int cnt = 1;
        for (int j = 0; j < s.size(); j++) {
            if (s.get(j).toUpperCase().startsWith(query.toUpperCase())) {
                out.print(s.get(j) + "\n");
                System.out.println(s.get(j));
                if (cnt >= 5)// 5=How many results have to show while we are typing(auto suggestions)
                {
                    break;
                }
                cnt++;
            }
        }
        rs.close();
        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>