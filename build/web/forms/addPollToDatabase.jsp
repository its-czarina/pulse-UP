<%-- 
    Document   : addPollToDatabase
    Created on : Oct 30, 2015, 10:39:40 AM
    Author     : czarinarae
--%>
<%@page import="org.jasypt.util.text.BasicTextEncryptor"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pulseup", "root", "");
        Statement s = conn.createStatement();

        s.execute("insert into poll (date_created, poll_question,poll_desc,admin_id) values(NOW(),'"+request.getParameter("poll-title")+"','"+request.getParameter("poll-desc")+"',0   )");
              
   %>
    
